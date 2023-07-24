using ZAPIHPS999 as service from '../../srv/service';

annotate service.ZTHBT0053 with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Value : ZZH_IDATS,
        },
        {
            $Type : 'UI.DataField',
            Value : ZZH_IUZEIT,
        },
        {
            $Type : 'UI.DataField',
            Value : ZZH_IUSR,
        },
        {
            $Type : 'UI.DataField',
            Value : ZZH_IREPID,
        },
    ]
);
annotate service.ZTHBT0053 with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ZZH_IDATS,
            },
            {
                $Type : 'UI.DataField',
                Value : ZZH_IUZEIT,
            },
            {
                $Type : 'UI.DataField',
                Value : ZZH_IUSR,
            },
            {
                $Type : 'UI.DataField',
                Value : ZZH_IREPID,
            },
            {
                $Type : 'UI.DataField',
                Value : ZZH_UDATS,
            },
            {
                $Type : 'UI.DataField',
                Value : ZZH_UUZEIT,
            },
            {
                $Type : 'UI.DataField',
                Value : ZZH_UUSR,
            },
            {
                $Type : 'UI.DataField',
                Value : ZZH_UREPID,
            },
            {
                $Type : 'UI.DataField',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Value : YIL_INVOICE_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : SHIPPING_POINT,
            },
            {
                $Type : 'UI.DataField',
                Value : SOLD_TO,
            },
            {
                $Type : 'UI.DataField',
                Value : SHIP_TO,
            },
            {
                $Type : 'UI.DataField',
                Value : INCOTERMS1,
            },
            {
                $Type : 'UI.DataField',
                Value : INCOTERMS2,
            },
            {
                $Type : 'UI.DataField',
                Value : CURRENCY,
            },
            {
                $Type : 'UI.DataField',
                Value : ISSUING_DATE,
            },
            {
                $Type : 'UI.DataField',
                Value : SAILING_OR_ABOUT,
            },
            {
                $Type : 'UI.DataField',
                Value : AWB_DATE,
            },
            {
                $Type : 'UI.DataField',
                Value : MASTER_AWB_NO,
            },
            {
                $Type : 'UI.DataField',
                Value : HOUSE_AWB_NO,
            },
            {
                $Type : 'UI.DataField',
                Value : FLIGHT_NO,
            },
            {
                $Type : 'UI.DataField',
                Value : FROM_CITY,
            },
            {
                $Type : 'UI.DataField',
                Value : FROM_COUNTRY_code,
            },
            {
                $Type : 'UI.DataField',
                Value : TO_CITY,
            },
            {
                $Type : 'UI.DataField',
                Value : TO_COUNTRY_code,
            },
            {
                $Type : 'UI.DataField',
                Value : VIA_CITY,
            },
            {
                $Type : 'UI.DataField',
                Value : VIA_COUNTRY_code,
            },
            {
                $Type : 'UI.DataField',
                Value : TRANSPORT_MOTXT,
            },
            {
                $Type : 'UI.DataField',
                Value : INVOICE_NOTE1,
            },
            {
                $Type : 'UI.DataField',
                Value : INVOICE_NOTE2,
            },
            {
                $Type : 'UI.DataField',
                Value : INVOICE_NOTE3,
            },
            {
                $Type : 'UI.DataField',
                Value : INVOICE_NOTE4,
            },
            {
                $Type : 'UI.DataField',
                Value : INVOICE_NOTE5,
            },
            {
                $Type : 'UI.DataField',
                Value : INVOICE_NOTE6,
            },
            {
                $Type : 'UI.DataField',
                Value : INVOICE_NOTE7,
            },
            {
                $Type : 'UI.DataField',
                Value : FREIGHT,
            },
            {
                $Type : 'UI.DataField',
                Value : FREIGHT_FLG,
            },
            {
                $Type : 'UI.DataField',
                Value : INSURANCE,
            },
            {
                $Type : 'UI.DataField',
                Value : INSURANCE_FLG,
            },
            {
                $Type : 'UI.DataField',
                Value : FR_INS,
            },
            {
                $Type : 'UI.DataField',
                Value : FR_INS_FLG,
            },
            {
                $Type : 'UI.DataField',
                Value : CERTIFICATE_FEE,
            },
            {
                $Type : 'UI.DataField',
                Value : CERTIF_FEE_FLG,
            },
            {
                $Type : 'UI.DataField',
                Value : CERT_ORG_FEE,
            },
            {
                $Type : 'UI.DataField',
                Value : CERT_ORG_FEE_FLG,
            },
            {
                $Type : 'UI.DataField',
                Value : OTHERS,
            },
            {
                $Type : 'UI.DataField',
                Value : OTHERS_FLG,
            },
            {
                $Type : 'UI.DataField',
                Value : PERSON_IN_CHRG,
            },
            {
                $Type : 'UI.DataField',
                Value : REMARKS,
            },
            {
                $Type : 'UI.DataField',
                Value : LC_NO,
            },
            {
                $Type : 'UI.DataField',
                Value : LC_DATE,
            },
            {
                $Type : 'UI.DataField',
                Value : ISSUING_BANK,
            },
            {
                $Type : 'UI.DataField',
                Value : TOTAL_CASE,
            },
            {
                $Type : 'UI.DataField',
                Value : NET_WEIGHT,
            },
            {
                $Type : 'UI.DataField',
                Value : NET_WEIGHT_UOM,
            },
            {
                $Type : 'UI.DataField',
                Value : GROSS_WEIGHT,
            },
            {
                $Type : 'UI.DataField',
                Value : GROSS_WEIGHT_UOM,
            },
            {
                $Type : 'UI.DataField',
                Value : VOLUME,
            },
            {
                $Type : 'UI.DataField',
                Value : VOLUME_UOM,
            },
            {
                $Type : 'UI.DataField',
                Value : POSID,
            },
            {
                $Type : 'UI.DataField',
                Value : ZZH_D_FLG,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
