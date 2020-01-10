<?php

class DataValidator
{
    /**
     * describe the modal
     * @param $modal
     * describe the carray to be validated
     * @param $arrCandidate
     * is it associative
     * @param bool $assoc
     * @return bool
     */
    static function payloadValidator($modal, $arrCandidate, $assoc = true)
    {
        $keysModal = array_keys($modal);
        $keysCandidate = array_keys($arrCandidate);

        if ($assoc) {
            return empty(array_diff($keysModal, $keysCandidate));
        }

        return empty(array_diff($modal, $arrCandidate));
    }

}


