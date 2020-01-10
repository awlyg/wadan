<?php


namespace App\Core;


class DataValidator
{
    /**
     * describe the modal
     * @param $modal
     * describe the array to be validated
     * @param $arrCandidate
     * is it associative
     * @param bool $assoc
     * @return bool
     */
    static function payloadValidator($modal, $arrCandidate, $assoc = true)
    {
        if ($assoc) {
            $keysModal = array_keys($modal);
            $keysCandidate = array_keys($arrCandidate);

            return empty(array_diff($keysModal, $keysCandidate));
        }

        return empty(array_diff($modal, $arrCandidate));
    }

}
