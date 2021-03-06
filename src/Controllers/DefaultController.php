<?php

namespace App\Controllers;

use App\Core;
use App\Core\BaseController;
use App\Model\QuoteManager;
use App\Services\CommonService;
use App\Services\NotificationService;
use Mpdf\Mpdf;

class DefaultController extends BaseController
{

    public $c_language;

    public function __construct()
    {
        $this->c_language = \App\Core::getCurrentLanguage();
    }

    //render site hompage
    public function index()
    {
        // header("location: /front");
    }

    // send notifications 
    public function notifyUser($request) {

        $code = $request->data->code;
        $email = $request->data->email;
        $id = $request->data->id;
        
        $sent = NotificationService::sendNotification($code, $email, $id);
        
        return $this->JSONResponse($sent);
    }


    //print hompage
    public function printOrder($request)
    {
        ini_set('memory_limit', -1);

        $id = $request->data['id'];
        if ($id && !empty($id)) {
            $order = CommonService::getItemById($id, 'purchase_order');
            $purchases = CommonService::getAll('purchase_item', ['order_id' => $order['id']]);
            $vendor = CommonService::getItemById($order['vendor'], 'supplier');
            $approvedBy = CommonService::getItemById($order['approved_by'], 'user');

            if ($order) {

                $html = self::render('pdf/order-print', [
                    'order' => $order,
                    'items' => $purchases,
                    'approvedBy' => $approvedBy,
                    'vendor' => $vendor]);

                // return $html;


                try{
                    header('Content-Type: application/pdf');
                    $mpdf = new Mpdf();
                    $mpdf->SetHTMLHeader($order['date']);
                    $mpdf->setFooter('{PAGENO}');
                    $mpdf->setTitle('Purchase order');

                    $mpdf->WriteHTML($html);
                    $mpdf->Output('order-' . $order['id'] . '-' . $order['date'] . '.pdf', 'I');
                } catch (\Exception $exception) {
                    echo  $exception->getMessage();
                }

            }
        }
        // header("location: /front");
    }

    public function printVoucher($request)
    {
        ini_set('memory_limit', -1);

        $id = $request->data['id'];
        if ($id && !empty($id)) {
            $voucher = CommonService::getItemById($id, 'voucher');
            if ($voucher && $voucher['beneficiary']) {
                $beneficiary = CommonService::getItemById($voucher['beneficiary'],'beneficiary');

                $html = self::render('pdf/voucher-print', [
                    'voucher' => $voucher,
                    'beneficiary' => $beneficiary,
                ]);

                // return $html;
                try {
                    header('Content-Type: application/pdf');
                    $mpdf = new Mpdf();
                    $mpdf->SetHTMLHeader($voucher['date']);
                    $mpdf->setFooter('{PAGENO}');
                    $mpdf->setTitle('Payment voucher');

                    $mpdf->WriteHTML($html);
                    $mpdf->Output('voucher-' . $voucher['id'] . '-' . $voucher['date'] . '.pdf', 'I');
                } catch (\Exception $exception) {
                    echo  $exception->getMessage();
                }
            }
        }
    }

    //render site hompage
    public function TodayDate()
    {
        return $this->render('home');
    }

    //render site english hompage for SEO
    public function EnglishVersion()
    {
        $data = ['path_en' => '/en', 'path_ar' => '/'];
        $_SESSION['lang'] = 'en';
        return $this->render('basic/hijri', $data);
    }

    #to render login page
    public function Login()
    {
        $this->render("login/login");
    }

    public function Logout()
    {
        unset($_SESSION['user_logged_in']);
        header("location: /login");
    }

    public function SaveData($request)
    {
        global $db;

        $db->where('id', 1);

        $quote = $db->update('quotes', $request->data);

        if ($quote) {
            $_SESSION['system_message'] = 'Successfully saved !';
            header("location: /hijricpanel");
        }
    }

    private function isAuth()
    {
        return $_SESSION['user_logged_in'] ? true : false;
    }


    public function LoginHome($request = null)
    {
        global $db;

        //check if user is looged in
        if (empty($request->data)) {
            if (!$this->isAuth()) {
                $_SESSION['system_message'] = 'you\'ve to logged in first !';
                header("location: /login");
            }
        } else {
            $user = $request->data['username'];
            $pass = $request->data['password'];

            $db->where("username", $user);
            $db->where("password", md5($pass));

            $user = $db->getOne("users");

            if ($user) {
                $_SESSION['user_logged_in'] = true;
            } else {
                $_SESSION['system_message'] = 'error login or password !';
                header("location: /login");
            }

        }

        require_once DIR_BASE . 'pages/login/home.html.php';
    }

    #to render register page
    public function Register()
    {
        $this->render("login/register");
    }

    #non existed  routes
    public function NotFound()
    {
        $basePath = BASE_PATH;

        return '404 not found';
    }

    #to render the hijri calendar page
    public function hijriCalendar($data)
    {
        $this->render('basic/hijri', $data);
    }

    #to render the georgian calendar page
    public function georgianCalendar($data)
    {
        $this->render('basic/georgian', $data);
    }

    #to render the solar calendar page
    public function solarCalendar()
    {
        $this->render('basic/solar');
    }

    #render ramadan page
    public function Ramadan()
    {
        $data = [];
        $quoteManager = new QuoteManager();

        $data['ramadan'] = $quoteManager->getQuote(1);
        $data['year'] = '1996';
        $this->render('basic/ramadan', $data);
    }

    #render converter page
    public function Converter()
    {
        $this->render('basic/converter');
    }

    #render the months page
    public function Months()
    {
        $this->render('basic/months');
    }

//    public function Calendar()
    public function specialeDate($dec, $type)
    {
        $calendar = new \hijri\Calendar();
        $dateTime = new \hijri\datetime(null, null, $this->c_language, $calendar);

        $months = [];

        $months_translate = [];

        $mg = ($this->c_language == 'ar') ? 'M' : 'F';
        $mh = ($this->c_language == 'ar') ? '_M' : '_F';

        for ($i = 1; $i <= 12; $i++) {
            $dateTime->setDate(2019, $i, 1);
            $d_georgian = $dateTime->format($mg);
            $dateTime->setDateHijri(1441, $i, 1);
            $d_hijri = $dateTime->format($mh);

            $months [$d_georgian] = $i;
            $months [$d_hijri] = $i;
        }

        $dayParts = explode('/', $dec);
        unset($dayParts[0]);
        $dayParts = array_values($dayParts);
        $path = $dayParts;
        unset($dayParts[0], $dayParts[1]);
        $dayParts = array_values($dayParts);

        list($day, $month, $year) = $dayParts;
        $month = $months[$month];
        $day = (int)$day;
        $year = (int)$year;

        if (!isset($month) || $year == 0 || $day == 0) {
            header("location: /");
        }

        $full_date = [
            'year' => $year,
            'month' => $month,
            'day' => $day,
            'type' => $type
        ];


        if ($this->c_language == 'ar') {
            $path[0] = Core::mapingRoute('/' . $path[0]);

            $dateT = new \hijri\datetime(null, null, 'en', $calendar);

            if ($type == 'hijri') {
                $dateT->setDateHijri($year, $month, $day);
                $path[3] = $dateT->format('_F');
            } elseif ($type == 'georgian') {
                $dateT->setDate($year, $month, $day);
                $path[3] = $dateT->format('F');
            }

            $path_en = implode("/", $path);
            $full_date['path_en'] = $path_en;

            self::render('basic/single-date', $full_date);
        } else {
            $path[0] = Core::mapingRouteReverse('/' . $path[0]);

            $dateT = new \hijri\datetime(null, null, 'ar', $calendar);

            if ($type == 'hijri') {
                $dateT->setDateHijri($year, $month, $day);
                $path[3] = $dateT->format('_F');
            } elseif ($type == 'georgian') {
                $dateT->setDate($year, $month, $day);
                $path[3] = $dateT->format('M');
            }

            $path_ar = implode("/", $path);

            $full_date['path_ar'] = $path_ar;

            self::render('basic/single-date', $full_date);
        }
    }

    public function specialeMonth($decRequest, $specialType)
    {

        $calendar = new \hijri\Calendar();
        $dateTime = new \hijri\datetime(null, null, $this->c_language, $calendar);

        $months = [];

        $mg = ($this->c_language == 'ar') ? 'M' : 'F';
        $mh = ($this->c_language == 'ar') ? '_M' : '_F';

        for ($i = 1; $i <= 12; $i++) {
            $dateTime->setDate(2019, $i, 1);
            $d_georgian = $dateTime->format($mg);
            $dateTime->setDateHijri(1441, $i, 1);
            $d_hijri = $dateTime->format($mh);

            $months [$d_georgian] = $i;
            $months [$d_hijri] = $i;
        }

        $dayParts = explode('/', $decRequest);
        unset($dayParts[0]);
        $dayParts = array_values($dayParts);
        $path = $dayParts;
        unset($dayParts[0], $dayParts[1], $dayParts[2]);
        $dayParts = array_values($dayParts);


        list($month, $year) = $dayParts;
        $month = $months[$month];
        $year = (int)$year;

        if (!isset($month) || $year == 0) {
            header("location: /");
        }

        $full_date = [
            'month' => $month,
            'year' => $year,
            'type' => $specialType
        ];

        if ($this->c_language == 'ar') {
            $cal_trans = $path[0];

            $path[0] = Core::mapingRoute('/' . $path[0]);
            $dateT = new \hijri\datetime(null, null, 'en', $calendar);

            if ($specialType == 'hijri') {
                $dateT->setDateHijri($year, $month, 1);
                $path[3] = $dateT->format('_F');
            } elseif ($specialType == 'georgian') {
                $dateT->setDate($year, $month, 1);
                $path[3] = $dateT->format('F');
            }

            $path_en = implode("/", $path);

            $full_date['path_en'] = $path_en;
            $full_date['cal_trans'] = $cal_trans;

        } elseif ($this->c_language == 'en') {
            $cal_trans = $path[0];

            $path[0] = Core::mapingRouteReverse('/' . $path[0]);

            $dateT = new \hijri\datetime(null, null, 'ar', $calendar);

            if ($specialType == 'hijri') {
                $dateT->setDateHijri($year, $month, 1);
                $path[3] = $dateT->format('_F');
            } elseif ($specialType == 'georgian') {
                $dateT->setDate($year, $month, 1);
                $path[3] = $dateT->format('M');
            }

            $path_ar = implode("/", $path);
            $full_date['path_ar'] = $path_ar;
            $full_date['cal_trans'] = $cal_trans;

        }

        self::render('basic/single-month', $full_date);

    }

}
