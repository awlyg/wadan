<?php


namespace App\Helpers;


use ReallySimpleJWT\Token;

class AuthHelper
{

    private static $secret = 'sec!ReT423*&';

    // get the authorization header
    static function getAuthorizationHeader()
    {
        $headers = null;
        if (isset($_SERVER['Authorization'])) {
            $headers = trim($_SERVER["Authorization"]);
        } else if (isset($_SERVER['HTTP_AUTHORIZATION'])) { //Nginx or fast CGI
            $headers = trim($_SERVER["HTTP_AUTHORIZATION"]);
        } elseif (function_exists('apache_request_headers')) {
            $requestHeaders = apache_request_headers();
            // Server-side fix for bug in old Android versions (a nice side-effect of this fix means we don't care about capitalization for Authorization)
            $requestHeaders = array_combine(array_map('ucwords', array_keys($requestHeaders)), array_values($requestHeaders));
            //print_r($requestHeaders);
            if (isset($requestHeaders['Authorization'])) {
                $headers = trim($requestHeaders['Authorization']);
            }
        }
        return $headers;
    }

    /**
     * get access token from header
     * */
    static function getBearerToken()
    {
        $headers = self::getAuthorizationHeader();
        // HEADER: Get the access token from the header
        if (!empty($headers)) {
            if (preg_match('/Bearer\s(\S+)/', $headers, $matches)) {
                return $matches[1];
            }
        }
        return null;
    }


    // to validate the token
    static function validateToken($token=null)
    {
        return Token::validate($token, self::$secret);
    }

    // generate token
    static function generateToken($uid) {

        $payload = [
            'iat' => time(),
            'user_id' => $uid,
            'full_name' => 'Saud Al Otaibi',
            'user_role' => 'admin',
            'exp' => time() + (3600*24),
            'iss' => 'localhost',
        ];

        $token = Token::customPayload($payload, self::$secret);

        return $token;
    }
}
