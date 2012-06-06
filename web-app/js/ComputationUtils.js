/* 
 * JavaScript Sections Used By This Page To Dynamically Load Values
 */

function updateAllWithPaidAmount(principalRemain, percentageRate, yearDays) {
    
    var interestDays = document.getElementById("interestdays").value;
    var interest = computeSIInterest(principalRemain, interestDays, percentageRate, yearDays);
    var interestPaid = document.getElementById("interestdue");
    var pRemain = document.getElementById("principalreamain");
    interestPaid.value = interest;
    // Update Principal
    var pChange = document.getElementById("principalchange");
    // If Payment Doesn't Coer Fees + Interest Roll It Into The Principal
    var effect = document.getElementById("amtpaid").value 
        - interest
        - document.getElementById("feespaid").value
        - document.getElementById("latepaid").value;
    if (effect >= 0) {
        // Remainder of payment reduced principal
        pChange.value = -effect;
    }
    else {
        // Remaining Value Increases Principal
        pChange.value = abs(effect);
    }
    
    // Update The Remaining Principal
    pRemain.value = pRemainValue + pChange.value;
}

/*
 * Computs the Interest On A Payment 
 * made using the formula:
 * I = Principal Remain x Rate x (InterestDays/DaysInYear)
 * 
 * All items required for the computation must be passed
 * into the function.
 * It will return a value for the interest due
 * 
 */
function computeSIInterest(principalRemain, interestDays, percentageRate, yearDays) {
    alert("Computing $" + principalRemain + " @ " + percentageRate + " For YearDays " + yearDays
        + " Interest Days=" + interestDays );
    return (principalRemain * (percentageRate / 100) * (interestDays/yearDays));
}

function updateInterestDays() {
    
    // Get Full Date To Evaulate For Completeness:
    var selectDay =   document.getElementById("paymentdate_day");
    var selectMonth = document.getElementById("paymentdate_month");
    var selectYear =  document.getElementById("paymentdate_year");
    
    // Bail Out If There Are Any Values That Are Not Set:
    if (selectDay.value == "" || selectMonth.value == "") {
        return (-1);
    }
    // Extract The Values Selected
    var day = parseInt (selectDay.value);
    var month = parseInt (selectMonth.value);
    var year = parseInt (selectYear.value);
    
    var lastDate = new Date(document.getElementById("lastTrxDate").value);
    var currDate = new Date(year, month, day, 00, 00, 00,00);
    // Compute Differential In Date
    var oneDay=1000*60*60*24
    var diffInDates = Math.ceil((currDate.getTime() - lastDate.getTime())/(oneDay));
    
    /* Use For Debugging
    alert("Last Trx Date: " + lastDate);
    alert("Current Date " + currDate);
    alert("Diff " + diffInDates);
    */
    // Update The Field Value For The Days
    var interestDays = document.getElementById("interestdays");
    interestDays.value = diffInDates;
      
    updateLatePayment(currDate);
    return(diffInDates);
}
/**
 * Computes the late payment amounts right
 * after the current payment date is determined.
 */
function updateLatePayment(currDate) {
    
    var graceperiod = parseInt (document.getElementById("allowance").value);
    var due = document.getElementById("amtdue").value;
    var latePercentage = document.getElementById("latepercentage").value;
    var dueDay = document.getElementById("dueDay").value;
    var lateFee = due * (latePercentage/100);
    
    var milisecPerDay = 86400000;
    var expectedDate = new Date(currDate);
    expectedDate.setDate(dueDay);
    var latestDateAllowed = new Date(expectedDate.getTime() + (milisecPerDay * graceperiod));
    
    
    if (currDate>latestDateAllowed) {
        // Compute The Late Fee:
        alert ("Latest Expected Payment Date: " + latestDateAllowed + " Fee: " + lateFee);
        document.getElementById("latepaid").value = lateFee;
    }
    else {
        alert ("Latest Expected Payment Date: " + latestDateAllowed + "\nNo Late Fee/Penalty");
    }
}