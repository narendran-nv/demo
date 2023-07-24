namespace com.yokogawa;

using {Country} from '@sap/cds/common';

type INVOICE_ID       : String(10) @title: '{i18n>ShippingInvoiceNumber}';
type BUSINESS_PARTNER : String(10);
type CITY             : String(20);
type INVOICE_NOTE     : String(100);
type FLAG             : String(1);
type UOM              : String(3);

aspect managed {
    ZZH_IDATS  : Date       @title: '{i18n>CreationDate}';
    ZZH_IUZEIT : Time       @title: '{i18n>CreationTime}';
    ZZH_IUSR   : String     @title: '{i18n>CreatedBy}'  @cds.on.insert: $user;
    ZZH_IREPID : String(40) @title: '{i18n>CreatedProgram}';
    ZZH_UDATS  : Date       @title: '{i18n>ChangedDate}';
    ZZH_UUZEIT : Time       @title: '{i18n>ChangedTime}';
    ZZH_UUSR   : String     @title: '{i18n>ChangedBy}'  @cds.on.insert: $user  @cds.on.update: $user;
    ZZH_UREPID : String(40) @title: '{i18n>ChangedProgram}';
}

entity ZTHBT0053 : managed {
    key ID               : INVOICE_ID;
        YIL_INVOICE_ID   : INVOICE_ID       @title: '{i18n>YILShippingInvoiceNumber}';
        SHIPPING_POINT   : String(4)        @title: '{i18n>ShippingPoint=Shipping Point}';
        SOLD_TO          : BUSINESS_PARTNER @title: '{i18n>SoldToParty}';
        SHIP_TO          : BUSINESS_PARTNER @title: '{i18n>ShipToParty}';
        INCOTERMS1       : String(3)        @title: '{i18n>Incoterms1}';
        INCOTERMS2       : String(28)       @title: '{i18n>Incoterms2}';
        CURRENCY         : String(5)        @title: '{i18n>Currency}';
        ISSUING_DATE     : Date             @title: '{i18n>IssuingDate}';
        SAILING_OR_ABOUT : Date             @title: '{i18n>SailingOnOrAbout}';
        AWB_DATE         : Date             @title: '{i18n>AWBDate}';
        MASTER_AWB_NO    : String(35)       @title: '{i18n>MasterAWBNo}';
        HOUSE_AWB_NO     : String(35)       @title: '{i18n>HouseAWBNo}';
        FLIGHT_NO        : String(35)       @title: '{i18n>FlightNo}';
        FROM_CITY        : CITY             @title: '{i18n>FromCity}';
        FROM_COUNTRY     : Country          @title: '{i18n>FromCountry}';
        TO_CITY          : CITY             @title: '{i18n>ToCity}';
        TO_COUNTRY       : Country          @title: '{i18n>ToCountry}';
        VIA_CITY         : CITY             @title: '{i18n>ViaCity}';
        VIA_COUNTRY      : Country          @title: '{i18n>ViaCountry}';
        TRANSPORT_MOTXT  : String(20)       @title: '{i18n>TransportationModeText}';
        INVOICE_NOTE1    : INVOICE_NOTE     @title: '{i18n>InvoiceNote1}';
        INVOICE_NOTE2    : INVOICE_NOTE     @title: '{i18n>InvoiceNote2}';
        INVOICE_NOTE3    : INVOICE_NOTE     @title: '{i18n>InvoiceNote3}';
        INVOICE_NOTE4    : INVOICE_NOTE     @title: '{i18n>InvoiceNote4}';
        INVOICE_NOTE5    : INVOICE_NOTE     @title: '{i18n>InvoiceNote5}';
        INVOICE_NOTE6    : INVOICE_NOTE     @title: '{i18n>InvoiceNote6}';
        INVOICE_NOTE7    : INVOICE_NOTE     @title: '{i18n>InvoiceNote7}';
        FREIGHT          : String(11)       @title: '{i18n>Freight}';
        FREIGHT_FLG      : FLAG             @title: '{i18n>FreightFlag}';
        INSURANCE        : String(11)       @title: '{i18n>Insurance}';
        INSURANCE_FLG    : FLAG             @title: '{i18n>InsuranceFlag}';
        FR_INS           : String(11)       @title: '{i18n>FreightAndInsurance}';
        FR_INS_FLG       : FLAG             @title: '{i18n>FreightAndInsuranceFlag}';
        CERTIFICATE_FEE  : String(11)       @title: '{i18n>CertificateFee}';
        CERTIF_FEE_FLG   : FLAG             @title: '{i18n>CertificateFeeFlag}';
        CERT_ORG_FEE     : String(11)       @title: '{i18n>CertificateOfOriginFee}';
        CERT_ORG_FEE_FLG : FLAG             @title: '{i18n>CertificateOfOriginFeeFlag}';
        OTHERS           : String(11)       @title: '{i18n>Others}';
        OTHERS_FLG       : FLAG             @title: '{i18n>OthersFlag}';
        PERSON_IN_CHRG   : String(30)       @title: '{i18n>PersonInChargeOfInvoice}';
        REMARKS          : String(50)       @title: '{i18n>Remarks}';
        LC_NO            : String(10)       @title: '{i18n>LCNumber}';
        LC_DATE          : Date             @title: '{i18n>LCDate}';
        ISSUING_BANK     : String(40)       @title: '{i18n>IssuingBank}';
        TOTAL_CASE       : Decimal(13, 2)   @title: '{i18n>TotalCase}';
        NET_WEIGHT       : Decimal(13, 2)   @title: '{i18n>NetWeight}';
        NET_WEIGHT_UOM   : UOM              @title: '{i18n>NetWeightUnit}';
        GROSS_WEIGHT     : Decimal(13, 2)   @title: '{i18n>GrossWeight}';
        GROSS_WEIGHT_UOM : UOM              @title: '{i18n>GrossWeightUnit}';
        VOLUME           : Decimal(13, 2)   @title: '{i18n>Volume}';
        VOLUME_UOM       : UOM              @title: '{i18n>VolumeUnit}';
        POSID            : String(24)       @title: '{i18n>ProjectDefinition}';
        ZZH_D_FLG        : FLAG             @title: '{i18n>DeletionFlag}';

        ITEMS            : Composition of many ZTHBT0054
                               on ITEMS.INVOICE = $self;
}

entity ZTHBT0054 : managed {
    key INVOICE        : Association to ZTHBT0053;
    key INVOICE_ITM    : String(6)  @title: '{i18n>InvoiceItem}';
        SALES_DOC      : String(10) @title: '{i18n>SalesDocument}';
        SALES_DOC_ITEM : String(6)  @title: '{i18n>SalesDocumentItem}';
}
