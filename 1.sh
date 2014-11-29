CI_BUILD_REF_NAME="123456"
function display_op()
{
    echo -e "\t$1\t$2\t$3\t$4\t$5"
}


# main_script
for PHP_VERSION in 5.2 5.3 5.4 5.5 5.6; do 
    for WP_VERSION in 4.0 3.9; do
        for WP_MULTISITE in 0 1; do
            LOG_FILE="${CI_BUILD_REF_NAME}_php-${PHP_VERSION}_wp-${WP_VERSION}_m-${WP_MULTISITE}.log"
            STATUS="PASS"
            display_op $STATUS $PHP_VERSION $WP_VERSION $WP_MULTISITE $LOG_FILE
        done
    done
done

