.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field private static final DM_COMMERCE_SERVER_ADDRESS:Ljava/lang/String; = "10654040"

.field private static final DM_EXPERIMENT_SERVER_ADDRESS:Ljava/lang/String; = "1065840409"

.field private static final DM_SERVER_PORT:I = 0x4266

.field public static final ENCODING_7BIT_LOCKING:I = 0xc

.field public static final ENCODING_7BIT_LOCKING_SINGLE:I = 0xd

.field public static final ENCODING_7BIT_SINGLE:I = 0xb

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MASK_MESSAGE_TYPE_INDICATOR:I = 0x3

.field public static final MASK_USER_DATA_HEADER_INDICATOR:I = 0x40

.field public static final MASK_VALIDITY_PERIOD_FORMAT:I = 0x18

.field public static final MASK_VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x18

.field public static final MASK_VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x8

.field public static final MASK_VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field public static final MASK_VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x10


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private forSubmit:Z

.field private isStatusReportMessage:Z

.field private messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

.field private mti:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 67
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 85
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 550
    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    .line 849
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 850
    .local v1, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v1, :cond_0

    .line 851
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 852
    .restart local v1       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 853
    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 854
    const/16 v2, 0x8c

    if-le v0, v2, :cond_1

    .line 855
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 857
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 863
    :goto_0
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 865
    .end local v0           #octets:I
    :cond_0
    return-object v1

    .line 860
    .restart local v0       #octets:I
    :cond_1
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 861
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 5
    .parameter "msgBody"
    .parameter "use7bitOnly"
    .parameter "encodingType"

    .prologue
    const/4 v4, 0x3

    .line 1935
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    .line 1937
    .local v1, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-ne p2, v4, :cond_0

    .line 1938
    const-string v2, "GSM"

    const-string v3, "input mode is unicode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/4 v1, 0x0

    .line 1941
    :cond_0
    if-nez v1, :cond_1

    .line 1942
    const-string v2, "GSM"

    const-string v3, "7-bit encoding fail"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v1           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1944
    .restart local v1       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 1945
    .local v0, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1946
    const/16 v2, 0x8c

    if-le v0, v2, :cond_2

    .line 1947
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1949
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1955
    :goto_0
    iput v4, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1957
    .end local v0           #octets:I
    :cond_1
    return-object v1

    .line 1952
    .restart local v0       #octets:I
    :cond_2
    const/4 v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1953
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0
.end method

.method public static computeRemainUserDataLength(Z[I)I
    .locals 4
    .parameter "inSeptets"
    .parameter "headerElt"

    .prologue
    .line 1835
    const/4 v1, 0x0

    .line 1837
    .local v1, headerBytes:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 1838
    aget v3, p1, v2

    sparse-switch v3, :sswitch_data_0

    .line 1837
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1840
    :sswitch_0
    add-int/lit8 v1, v1, 0x5

    .line 1841
    goto :goto_1

    .line 1843
    :sswitch_1
    add-int/lit8 v1, v1, 0x3

    .line 1844
    goto :goto_1

    .line 1846
    :sswitch_2
    add-int/lit8 v1, v1, 0x3

    .line 1847
    goto :goto_1

    .line 1853
    :cond_0
    if-eqz v1, :cond_1

    .line 1854
    add-int/lit8 v1, v1, 0x1

    .line 1857
    :cond_1
    rsub-int v0, v1, 0x8c

    .line 1858
    .local v0, count:I
    if-eqz p0, :cond_2

    .line 1859
    mul-int/lit8 v3, v0, 0x8

    div-int/lit8 v0, v3, 0x7

    .line 1865
    :cond_2
    return v0

    .line 1838
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x24 -> :sswitch_1
        0x25 -> :sswitch_2
    .end sparse-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 205
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 207
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    .line 212
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 213
    const-string v5, "GSM"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 230
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 217
    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    .line 220
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 224
    .local v3, size:I
    new-array v2, v3, [B

    .line 225
    .local v2, pdu:[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v0

    .line 229
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 230
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    .line 144
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 145
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static encodeStringWithSpecialLang(Ljava/lang/CharSequence;ILcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Z
    .locals 7
    .parameter "msgBody"
    .parameter "language"
    .parameter "ted"

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1705
    invoke-static {p0, v3, v4, v4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1707
    .local v2, septets:I
    if-eq v2, v5, :cond_1

    .line 1709
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1710
    const/16 v4, 0xa0

    if-le v2, v4, :cond_0

    .line 1711
    div-int/lit16 v4, v2, 0x99

    add-int/lit8 v4, v4, 0x1

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1712
    rem-int/lit16 v4, v2, 0x99

    rsub-int v4, v4, 0x99

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1718
    :goto_0
    iput v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1719
    iput v5, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1720
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try Default: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    :goto_1
    return v3

    .line 1715
    :cond_0
    iput v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1716
    rsub-int v4, v2, 0xa0

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_0

    .line 1727
    :cond_1
    invoke-static {p0, v3, v4, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1729
    if-eq v2, v5, :cond_3

    .line 1731
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    .line 1732
    .local v0, headerElt:[I
    invoke-static {v3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v1

    .line 1734
    .local v1, maxLength:I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1735
    if-le v2, v1, :cond_2

    .line 1736
    aput v4, v0, v3

    .line 1737
    invoke-static {v3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v1

    .line 1739
    div-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1740
    rem-int v4, v2, v1

    sub-int v4, v1, v4

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1745
    :goto_2
    iput v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1746
    iput-boolean v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    .line 1747
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1748
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try Locking Shift: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1742
    :cond_2
    iput v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1743
    sub-int v4, v1, v2

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 1755
    .end local v0           #headerElt:[I
    .end local v1           #maxLength:I
    :cond_3
    invoke-static {p0, v3, p1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1757
    if-eq v2, v5, :cond_5

    .line 1759
    new-array v0, v6, [I

    fill-array-data v0, :array_1

    .line 1760
    .restart local v0       #headerElt:[I
    invoke-static {v3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v1

    .line 1762
    .restart local v1       #maxLength:I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1763
    if-le v2, v1, :cond_4

    .line 1764
    aput v4, v0, v3

    .line 1765
    invoke-static {v3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v1

    .line 1767
    div-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1768
    rem-int v4, v2, v1

    sub-int v4, v1, v4

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1773
    :goto_3
    iput v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1774
    iput-boolean v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    .line 1775
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1776
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try Single Shift: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1770
    :cond_4
    iput v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1771
    sub-int v4, v1, v2

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 1783
    .end local v0           #headerElt:[I
    .end local v1           #maxLength:I
    :cond_5
    invoke-static {p0, v3, p1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptetsUsingTables(Ljava/lang/CharSequence;ZII)I

    move-result v2

    .line 1785
    if-eq v2, v5, :cond_7

    .line 1786
    const/4 v5, 0x3

    new-array v0, v5, [I

    fill-array-data v0, :array_2

    .line 1790
    .restart local v0       #headerElt:[I
    invoke-static {v3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v1

    .line 1792
    .restart local v1       #maxLength:I
    iput v2, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 1793
    if-le v2, v1, :cond_6

    .line 1794
    aput v4, v0, v6

    .line 1795
    invoke-static {v3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->computeRemainUserDataLength(Z[I)I

    move-result v1

    .line 1797
    div-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1798
    rem-int v4, v2, v1

    sub-int v4, v1, v4

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 1803
    :goto_4
    iput v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 1804
    iput-boolean v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    .line 1805
    iput-boolean v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    .line 1806
    iput p1, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->shiftLangId:I

    .line 1807
    const-string v4, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Try Locking & Single Shift: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1800
    :cond_6
    iput v3, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 1801
    sub-int v4, v1, v2

    iput v4, p2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_4

    .line 1811
    .end local v0           #headerElt:[I
    .end local v1           #maxLength:I
    :cond_7
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Use UCS2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1812
    goto/16 :goto_1

    .line 1731
    nop

    :array_0
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    .line 1759
    :array_1
    .array-data 0x4
        0x24t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data

    .line 1786
    :array_2
    .array-data 0x4
        0x25t 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
        0xfft 0xfft 0x0t 0x0t
    .end array-data
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 393
    const-string/jumbo v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 395
    .local v1, textPart:[B
    if-eqz p1, :cond_0

    .line 397
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 399
    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 400
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 406
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 407
    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 408
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    return-object v0

    .line 404
    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method private static getCurrentSysLanguage()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1819
    const-string/jumbo v2, "persist.sys.language"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1820
    .local v0, language:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1821
    const-string/jumbo v2, "ro.product.locale.language"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1824
    :cond_0
    const-string/jumbo v2, "tr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1826
    const/4 v1, -0x1

    .line 1831
    .local v1, ret:I
    :goto_0
    return v1

    .line 1828
    .end local v1           #ret:I
    :cond_1
    const/4 v1, -0x1

    .restart local v1       #ret:I
    goto :goto_0
.end method

.method private static getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "originalAddress"
    .parameter "mtiByte"
    .parameter "ret"

    .prologue
    const/4 v3, 0x0

    .line 1663
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1666
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 1667
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedScAddress:[B

    .line 1674
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1678
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 1679
    .local v1, oaBytes:[B
    if-eqz v1, :cond_2

    .line 1680
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_1

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1682
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1690
    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1692
    return-object v0

    .line 1669
    .end local v1           #oaBytes:[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #oaBytes:[B
    :cond_1
    move v2, v3

    .line 1680
    goto :goto_1

    .line 1684
    :cond_2
    const-string v2, "GSM"

    const-string/jumbo v4, "write a empty address for deliver pdu"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1686
    const/16 v2, 0x91

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method public static getDeliverPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJII)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "originalAddress"
    .parameter "message"
    .parameter "header"
    .parameter "timestamp"
    .parameter "encoding"
    .parameter "language"

    .prologue
    .line 1537
    const-string v12, "GSM"

    const-string v13, "SmsMessage: get deliver pdu"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1540
    :cond_0
    const/4 v8, 0x0

    .line 1627
    :goto_0
    return-object v8

    .line 1543
    :cond_1
    new-instance v8, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v8}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 1545
    .local v8, ret:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    const-string v13, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SmsMessage: UDHI = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz p3, :cond_3

    const/4 v12, 0x1

    :goto_1
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    if-eqz p3, :cond_4

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x0

    int-to-byte v7, v12

    .line 1548
    .local v7, mtiByte:B
    move-object/from16 v0, p1

    invoke-static {p0, v0, v7, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 1552
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p6, :cond_2

    .line 1554
    const/16 p6, 0x1

    .line 1557
    :cond_2
    :try_start_0
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Get SubmitPdu with Lang "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    const/4 v12, 0x1

    move/from16 v0, p6

    if-ne v0, v12, :cond_5

    .line 1560
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v12, v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 1599
    .local v11, userData:[B
    :goto_3
    if-eqz v11, :cond_a

    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_a

    .line 1600
    const-string v12, "GSM"

    const-string v13, "SmsMessage: message is too long"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    const/4 v8, 0x0

    goto :goto_0

    .line 1545
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v7           #mtiByte:B
    .end local v11           #userData:[B
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 1546
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 1561
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #mtiByte:B
    :cond_5
    if-lez p7, :cond_9

    const/4 v12, 0x3

    move/from16 v0, p6

    if-eq v0, v12, :cond_9

    .line 1562
    const/16 v12, 0xc

    move/from16 v0, p6

    if-ne v0, v12, :cond_6

    .line 1564
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p7

    invoke-static {v0, v1, v12, v2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v11

    .line 1574
    .restart local v11       #userData:[B
    :goto_4
    const/16 p6, 0x1

    goto :goto_3

    .line 1565
    .end local v11           #userData:[B
    :cond_6
    const/16 v12, 0xb

    move/from16 v0, p6

    if-ne v0, v12, :cond_7

    .line 1567
    const/4 v12, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p7

    invoke-static {v0, v1, v2, v12}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_4

    .line 1568
    .end local v11           #userData:[B
    :cond_7
    const/16 v12, 0xd

    move/from16 v0, p6

    if-ne v0, v12, :cond_8

    .line 1569
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move/from16 v2, p7

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_4

    .line 1572
    .end local v11           #userData:[B
    :cond_8
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v12, v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_4

    .line 1577
    .end local v11           #userData:[B
    :cond_9
    :try_start_2
    invoke-static/range {p2 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_3

    .line 1578
    .end local v11           #userData:[B
    :catch_0
    move-exception v10

    .line 1579
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1582
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1585
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 1589
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_4
    invoke-static/range {p2 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v11

    .line 1590
    .restart local v11       #userData:[B
    const/16 p6, 0x3

    goto :goto_3

    .line 1591
    .end local v11           #userData:[B
    :catch_2
    move-exception v10

    .line 1592
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1595
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 1605
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #userData:[B
    :cond_a
    const/4 v12, 0x1

    move/from16 v0, p6

    if-ne v0, v12, :cond_c

    .line 1606
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1615
    :goto_5
    invoke-static/range {p4 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSCTimestamp(J)[B

    move-result-object v9

    .line 1616
    .local v9, scts:[B
    if-eqz v9, :cond_d

    .line 1617
    const/4 v12, 0x0

    array-length v13, v9

    invoke-virtual {v4, v9, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1624
    :cond_b
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1625
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v8, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 1608
    .end local v9           #scts:[B
    :cond_c
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5

    .line 1619
    .restart local v9       #scts:[B
    :cond_d
    const/4 v6, 0x0

    .local v6, i:I
    :goto_6
    const/4 v12, 0x7

    if-ge v6, v12, :cond_b

    .line 1620
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1619
    add-int/lit8 v6, v6, 0x1

    goto :goto_6
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "originalPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    .line 1325
    invoke-static {p2, p3}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeader(II)[B

    move-result-object v0

    .line 1326
    .local v0, smsHeaderData:[B
    if-nez v0, :cond_0

    .line 1327
    const/4 v1, 0x0

    .line 1329
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0, p1, p4, v0, p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/16 v6, 0x4266

    const/4 v7, 0x0

    .line 443
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 444
    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 445
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 446
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 448
    const-string v5, "1065840409"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "10654040"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-ne v6, p2, :cond_1

    .line 449
    iput v6, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 452
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 453
    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 455
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 457
    .local v4, smsHeaderData:[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_2

    .line 458
    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v2, 0x0

    .line 486
    :goto_0
    return-object v2

    .line 463
    :cond_2
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 464
    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 471
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 479
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 480
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 483
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 485
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "destPort"
    .parameter "statusReportRequested"

    .prologue
    .line 1346
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->getCurrentSysLanguage()I

    move-result v6

    .line 1347
    .local v6, language:I
    const/4 v8, -0x1

    .line 1348
    .local v8, singleId:I
    const/4 v7, -0x1

    .line 1349
    .local v7, lockingId:I
    const/4 v5, 0x0

    .line 1350
    .local v5, encoding:I
    new-instance v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v9}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 1352
    .local v9, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-static {p2, v6, v9}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeStringWithSpecialLang(Ljava/lang/CharSequence;ILcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1353
    iget-boolean v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v0, :cond_0

    iget-boolean v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v0, :cond_0

    .line 1354
    const/16 v5, 0xd

    .line 1355
    move v7, v6

    move v8, v6

    .line 1370
    :goto_0
    invoke-static {p3, v8, v7}, Lcom/android/internal/telephony/SmsHeader;->getSubmitPduHeaderWithLang(III)[B

    move-result-object v4

    .local v4, smsHeaderData:[B
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    .line 1372
    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0

    .line 1356
    .end local v4           #smsHeaderData:[B
    :cond_0
    iget-boolean v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useLockingShift:Z

    if-eqz v0, :cond_1

    .line 1357
    const/16 v5, 0xc

    .line 1358
    move v7, v6

    goto :goto_0

    .line 1359
    :cond_1
    iget-boolean v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->useSingleShift:Z

    if-eqz v0, :cond_2

    .line 1360
    const/16 v5, 0xb

    .line 1361
    move v8, v6

    goto :goto_0

    .line 1363
    :cond_2
    const/4 v5, 0x1

    .line 1364
    const/4 v6, -0x1

    goto :goto_0

    .line 1367
    :cond_3
    const/4 v5, 0x3

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    .line 424
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    .line 257
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"

    .prologue
    .line 282
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 283
    :cond_0
    const/4 v7, 0x0

    .line 381
    :goto_0
    return-object v7

    .line 286
    :cond_1
    if-nez p5, :cond_4

    .line 288
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v9

    .line 289
    .local v9, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 290
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 291
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 293
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    .line 295
    :cond_2
    if-eqz p4, :cond_5

    .line 296
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 297
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_3

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_4

    .line 299
    :cond_3
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 303
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 304
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 315
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 317
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 318
    .local v6, mtiByte:B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 325
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_7

    .line 326
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 352
    .local v11, userData:[B
    :goto_3
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_9

    .line 353
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_8

    .line 355
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 307
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v6           #mtiByte:B
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #userData:[B
    .restart local v9       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 308
    .restart local v8       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 309
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 310
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 317
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 330
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #mtiByte:B
    :cond_7
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_3

    .line 331
    .end local v11           #userData:[B
    :catch_0
    move-exception v10

    .line 332
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 335
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 338
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 342
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 343
    .restart local v11       #userData:[B
    const/16 p5, 0x3

    goto :goto_3

    .line 344
    .end local v11           #userData:[B
    :catch_2
    move-exception v10

    .line 345
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 366
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #userData:[B
    :cond_8
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 379
    :goto_4
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 380
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 368
    :cond_9
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_a

    .line 370
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 375
    :cond_a
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "languageTable"
    .parameter "languageShiftTable"
    .parameter "validityPeriod"

    .prologue
    .line 1980
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1981
    :cond_0
    const/4 v7, 0x0

    .line 2092
    :goto_0
    return-object v7

    .line 1984
    :cond_1
    if-nez p5, :cond_4

    .line 1986
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v9

    .line 1987
    .local v9, ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 1988
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 1989
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 1991
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_4

    if-nez p6, :cond_2

    if-eqz p7, :cond_4

    .line 1992
    :cond_2
    if-eqz p4, :cond_5

    .line 1993
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 1994
    .local v8, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_3

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_4

    .line 1996
    :cond_3
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2000
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2001
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 2012
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_4
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 2014
    .local v7, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_6

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 2015
    .local v6, mtiByte:B
    if-ltz p8, :cond_7

    const/16 v12, 0xff

    move/from16 v0, p8

    if-gt v0, v12, :cond_7

    .line 2016
    or-int/lit8 v12, v6, 0x10

    int-to-byte v6, v12

    .line 2020
    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 2027
    .local v4, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_8

    .line 2028
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 2054
    .local v11, userData:[B
    :goto_4
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_b

    .line 2055
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_9

    .line 2058
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2004
    .end local v4           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v6           #mtiByte:B
    .end local v7           #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11           #userData:[B
    .restart local v9       #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2005
    .restart local v8       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2006
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2007
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 2014
    .end local v8           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v9           #ted:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v7       #ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    .line 2018
    .restart local v6       #mtiByte:B
    :cond_7
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "invalid VP: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p8

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2032
    .restart local v4       #bo:Ljava/io/ByteArrayOutputStream;
    :cond_8
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11       #userData:[B
    goto :goto_4

    .line 2033
    .end local v11           #userData:[B
    :catch_0
    move-exception v10

    .line 2034
    .local v10, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2037
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2040
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 2044
    .local v5, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 2045
    .restart local v11       #userData:[B
    const/16 p5, 0x3

    goto/16 :goto_4

    .line 2046
    .end local v11           #userData:[B
    :catch_2
    move-exception v10

    .line 2047
    .restart local v10       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v12, "GSM"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2050
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2070
    .end local v5           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v10           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v11       #userData:[B
    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2084
    :goto_5
    if-ltz p8, :cond_a

    const/16 v12, 0xff

    move/from16 v0, p8

    if-gt v0, v12, :cond_a

    .line 2085
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "write validity period into pdu: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p8

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    move/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2090
    :cond_a
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2091
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 2072
    :cond_b
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_c

    .line 2075
    const-string v12, "GSM"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 2081
    :cond_c
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;[B[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 5
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "data"
    .parameter "smsHeaderData"
    .parameter "statusReportRequested"

    .prologue
    const/4 v4, 0x0

    .line 1392
    array-length v2, p2

    array-length v3, p3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    const/16 v3, 0x8c

    if-le v2, v3, :cond_0

    .line 1393
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS data message may only contain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p3

    rsub-int v4, v4, 0x8c

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bytes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const/4 v1, 0x0

    .line 1421
    :goto_0
    return-object v1

    .line 1398
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1399
    .local v1, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v2, 0x41

    invoke-static {p0, p1, v2, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1406
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1411
    array-length v2, p2

    array-length v3, p3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1414
    array-length v2, p3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1415
    array-length v2, p3

    invoke-virtual {v0, p3, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1418
    array-length v2, p2

    invoke-virtual {v0, p2, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1420
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    goto :goto_0
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v3, 0x0

    .line 504
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 508
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 509
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedScAddress:[B

    .line 516
    :goto_0
    if-eqz p3, :cond_0

    .line 518
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 521
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 524
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 528
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 532
    .local v1, daBytes:[B
    if-eqz v1, :cond_3

    .line 533
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 537
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 546
    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 547
    return-object v0

    .line 511
    .end local v1           #daBytes:[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedScAddress:[B

    goto :goto_0

    .restart local v1       #daBytes:[B
    :cond_2
    move v2, v3

    .line 533
    goto :goto_1

    .line 540
    :cond_3
    const-string v2, "GSM"

    const-string/jumbo v4, "write an empty address for submit pdu"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 542
    const/16 v2, 0x81

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2
.end method

.method public static getSubmitPduWithLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"
    .parameter "language"

    .prologue
    .line 1439
    const-string v6, "GSM"

    const-string v7, "SmsMessage: get submit pdu"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1442
    :cond_0
    const/4 v3, 0x0

    .line 1532
    :goto_0
    return-object v3

    .line 1445
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 1447
    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const-string v7, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SmsMessage: UDHI = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p4, :cond_3

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    if-eqz p4, :cond_4

    const/16 v6, 0x40

    :goto_2
    or-int/lit8 v6, v6, 0x1

    int-to-byte v2, v6

    .line 1449
    .local v2, mtiByte:B
    invoke-static {p0, p1, v2, p3, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 1454
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p5, :cond_2

    .line 1456
    const/4 p5, 0x1

    .line 1459
    :cond_2
    :try_start_0
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get SubmitPdu with Lang "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const/4 v6, 0x1

    if-ne p5, v6, :cond_5

    .line 1462
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p2, p4, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1501
    .local v5, userData:[B
    :goto_3
    const/4 v6, 0x1

    if-ne p5, v6, :cond_b

    .line 1502
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xa0

    if-le v6, v7, :cond_a

    .line 1504
    const/4 v3, 0x0

    goto :goto_0

    .line 1447
    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v2           #mtiByte:B
    .end local v5           #userData:[B
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 1448
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 1463
    .restart local v0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local v2       #mtiByte:B
    :cond_5
    if-lez p6, :cond_9

    const/4 v6, 0x3

    if-eq p5, v6, :cond_9

    .line 1464
    const/16 v6, 0xc

    if-ne p5, v6, :cond_6

    .line 1466
    const/4 v6, 0x0

    :try_start_1
    invoke-static {p2, p4, v6, p6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v5

    .line 1476
    .restart local v5       #userData:[B
    :goto_4
    const/4 p5, 0x1

    goto :goto_3

    .line 1467
    .end local v5           #userData:[B
    :cond_6
    const/16 v6, 0xb

    if-ne p5, v6, :cond_7

    .line 1469
    const/4 v6, 0x0

    invoke-static {p2, p4, p6, v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v5

    .restart local v5       #userData:[B
    goto :goto_4

    .line 1470
    .end local v5           #userData:[B
    :cond_7
    const/16 v6, 0xd

    if-ne p5, v6, :cond_8

    .line 1471
    invoke-static {p2, p4, p6, p6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v5

    .restart local v5       #userData:[B
    goto :goto_4

    .line 1474
    .end local v5           #userData:[B
    :cond_8
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p2, p4, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .restart local v5       #userData:[B
    goto :goto_4

    .line 1479
    .end local v5           #userData:[B
    :cond_9
    :try_start_2
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    .restart local v5       #userData:[B
    goto :goto_3

    .line 1480
    .end local v5           #userData:[B
    :catch_0
    move-exception v4

    .line 1481
    .local v4, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string v6, "GSM"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1484
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1487
    .end local v4           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 1491
    .local v1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_4
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .line 1492
    .restart local v5       #userData:[B
    const/4 p5, 0x3

    goto :goto_3

    .line 1493
    .end local v5           #userData:[B
    :catch_2
    move-exception v4

    .line 1494
    .restart local v4       #uex:Ljava/io/UnsupportedEncodingException;
    const-string v6, "GSM"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1497
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1514
    .end local v1           #ex:Lcom/android/internal/telephony/EncodeException;
    .end local v4           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #userData:[B
    :cond_a
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1530
    :goto_5
    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v0, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1531
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/SmsMessageBase$PduBase;->encodedMessage:[B

    goto/16 :goto_0

    .line 1516
    :cond_b
    const/4 v6, 0x0

    aget-byte v6, v5, v6

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x8c

    if-le v6, v7, :cond_c

    .line 1518
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1525
    :cond_c
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_5
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    .line 239
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 240
    .local v0, len:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 242
    .local v1, smscLen:I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method private static intToGsmBCDByte(I)B
    .locals 4
    .parameter "value"

    .prologue
    .line 1647
    if-gez p0, :cond_0

    .line 1648
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[time invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v0, 0x0

    .line 1657
    :goto_0
    return v0

    .line 1651
    :cond_0
    rem-int/lit8 p0, p0, 0x64

    .line 1652
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[time value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    div-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0xf

    rem-int/lit8 v2, p0, 0xa

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v2, v2, 0xf0

    or-int/2addr v1, v2

    int-to-byte v0, v1

    .line 1656
    .local v0, b:B
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[time bcd value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    .line 184
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 185
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    .line 172
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 173
    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 177
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    .line 1294
    const-string v0, "GSM"

    const-string/jumbo v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2
    .parameter "p"

    .prologue
    .line 1304
    const-string v0, "GSM"

    const-string/jumbo v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v0, 0x0

    return-object v0
.end method

.method private parsePdu([B)V
    .locals 4
    .parameter "pdu"

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    .line 992
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 994
    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    .line 996
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1004
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1006
    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    .line 1007
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    .line 1023
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1013
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1025
    :goto_0
    return-void

    .line 1016
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1019
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1007
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static parseSCTimestamp(J)[B
    .locals 5
    .parameter "millis"

    .prologue
    const/4 v4, 0x0

    .line 1631
    new-instance v1, Landroid/text/format/Time;

    const-string v2, "UTC"

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1632
    .local v1, t:Landroid/text/format/Time;
    invoke-virtual {v1, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1634
    const/4 v2, 0x7

    new-array v0, v2, [B

    .line 1635
    .local v0, scts:[B
    iget v2, v1, Landroid/text/format/Time;->year:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v2

    aput-byte v2, v0, v4

    .line 1636
    const/4 v2, 0x1

    iget v3, v1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1637
    const/4 v2, 0x2

    iget v3, v1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1638
    const/4 v2, 0x3

    iget v3, v1, Landroid/text/format/Time;->hour:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1639
    const/4 v2, 0x4

    iget v3, v1, Landroid/text/format/Time;->minute:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1640
    const/4 v2, 0x5

    iget v3, v1, Landroid/text/format/Time;->second:I

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1641
    const/4 v2, 0x6

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->intToGsmBCDByte(I)B

    move-result v3

    aput-byte v3, v0, v2

    .line 1643
    return-object v0
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1083
    and-int/lit16 v1, p2, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1085
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1087
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    .line 1094
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1098
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1105
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1109
    and-int/lit8 v1, p2, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 1111
    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1112
    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v3

    .line 1083
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1109
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1034
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    .line 1037
    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    .line 1039
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 1041
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1043
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    .line 1045
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    .line 1047
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    .line 1049
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    .line 1052
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1054
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1055
    .local v0, extraParams:I
    move v2, v0

    .line 1056
    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1060
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v5

    .line 1037
    goto :goto_0

    .line 1064
    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x78

    if-nez v3, :cond_4

    .line 1066
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    .line 1067
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1070
    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    .line 1071
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1074
    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    .line 1075
    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_5

    move v1, v4

    .line 1076
    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1080
    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v5

    .line 1075
    goto :goto_2
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v7, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1869
    and-int/lit16 v3, p2, 0x80

    const/16 v6, 0x80

    if-ne v3, v6, :cond_2

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    .line 1871
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 1873
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1874
    iget-object v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v3, :cond_0

    .line 1882
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    .line 1886
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    .line 1893
    and-int/lit8 v2, p2, 0x18

    .line 1894
    .local v2, validPeriodFormat:I
    sparse-switch v2, :sswitch_data_0

    .line 1915
    const-string v3, "GSM"

    const-string v6, "TP-VP invalid validity format"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_1
    :goto_1
    and-int/lit8 v3, p2, 0x40

    const/16 v6, 0x40

    if-ne v3, v6, :cond_3

    move v0, v4

    .line 1920
    .local v0, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1921
    return-void

    .end local v0           #hasUserDataHeader:Z
    .end local v2           #validPeriodFormat:I
    :cond_2
    move v3, v5

    .line 1869
    goto :goto_0

    .line 1896
    .restart local v2       #validPeriodFormat:I
    :sswitch_0
    const-string v3, "GSM"

    const-string v6, "TP-VP field is not present"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1899
    :sswitch_1
    const-string v3, "GSM"

    const-string v6, "TP-VP field is relative format"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1900
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->relativeValidityPeriod:I

    goto :goto_1

    .line 1903
    :sswitch_2
    const-string v3, "GSM"

    const-string v6, "TP-VP field is enhanced format"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v7, :cond_1

    .line 1905
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 1904
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1909
    .end local v1           #i:I
    :sswitch_3
    const-string v3, "GSM"

    const-string v6, "TP-VP field is absolute format"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_4
    if-ge v1, v7, :cond_1

    .line 1911
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    .line 1910
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .end local v1           #i:I
    :cond_3
    move v0, v5

    .line 1919
    goto :goto_2

    .line 1894
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 11
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    const/16 v10, 0xe0

    const/16 v9, 0xc0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1122
    const/4 v3, 0x0

    .line 1123
    .local v3, hasMessageClass:Z
    const/4 v4, 0x0

    .line 1125
    .local v4, userDataCompressed:Z
    const/4 v2, 0x0

    .line 1128
    .local v2, encodingType:I
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_5

    .line 1130
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_1

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1131
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_2

    move v4, v6

    .line 1132
    :goto_1
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    move v3, v6

    .line 1134
    :goto_2
    if-eqz v4, :cond_4

    .line 1135
    const-string v5, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    :goto_3
    if-ne v2, v6, :cond_10

    :goto_4
    invoke-virtual {p1, p2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .line 1215
    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    .line 1216
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1218
    packed-switch v2, :pswitch_data_0

    .line 1246
    :goto_5
    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->parseMessageBody()V

    .line 1250
    :cond_0
    if-nez v3, :cond_13

    .line 1251
    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 1268
    :goto_6
    return-void

    .end local v1           #count:I
    :cond_1
    move v5, v7

    .line 1130
    goto :goto_0

    :cond_2
    move v4, v7

    .line 1131
    goto :goto_1

    :cond_3
    move v3, v7

    .line 1132
    goto :goto_2

    .line 1138
    :cond_4
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_1

    goto :goto_3

    .line 1140
    :pswitch_0
    const/4 v2, 0x1

    .line 1141
    goto :goto_3

    .line 1144
    :pswitch_1
    const/4 v2, 0x3

    .line 1145
    goto :goto_3

    .line 1149
    :pswitch_2
    const-string v5, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const/4 v2, 0x2

    goto :goto_3

    .line 1155
    :cond_5
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v8, 0xf0

    if-ne v5, v8, :cond_7

    .line 1156
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    .line 1157
    const/4 v3, 0x1

    .line 1158
    const/4 v4, 0x0

    .line 1160
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x4

    if-nez v5, :cond_6

    .line 1162
    const/4 v2, 0x1

    goto :goto_3

    .line 1165
    :cond_6
    const/4 v2, 0x2

    goto :goto_3

    .line 1167
    :cond_7
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-eq v5, v9, :cond_8

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    const/16 v8, 0xd0

    if-eq v5, v8, :cond_8

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v10, :cond_d

    .line 1176
    :cond_8
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v10, :cond_9

    .line 1177
    const/4 v2, 0x3

    .line 1182
    :goto_7
    const/4 v4, 0x0

    .line 1183
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x8

    const/16 v8, 0x8

    if-ne v5, v8, :cond_a

    move v0, v6

    .line 1187
    .local v0, active:Z
    :goto_8
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    if-nez v5, :cond_c

    .line 1188
    iput-boolean v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1189
    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    .line 1190
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xf0

    if-ne v5, v9, :cond_b

    move v5, v6

    :goto_9
    iput-boolean v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    goto/16 :goto_3

    .line 1179
    .end local v0           #active:Z
    :cond_9
    const/4 v2, 0x1

    goto :goto_7

    :cond_a
    move v0, v7

    .line 1183
    goto :goto_8

    .restart local v0       #active:Z
    :cond_b
    move v5, v7

    .line 1190
    goto :goto_9

    .line 1192
    :cond_c
    iput-boolean v7, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    .line 1194
    const-string v5, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MWI for fax, email, or other "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1197
    .end local v0           #active:Z
    :cond_d
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v5, v5, 0xc0

    const/16 v8, 0x80

    if-ne v5, v8, :cond_f

    .line 1200
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    const/16 v8, 0x84

    if-ne v5, v8, :cond_e

    .line 1202
    const/4 v2, 0x4

    goto/16 :goto_3

    .line 1204
    :cond_e
    const-string v5, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1208
    :cond_f
    const-string v5, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_10
    move v6, v7

    .line 1213
    goto/16 :goto_4

    .line 1222
    .restart local v1       #count:I
    :pswitch_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1225
    :pswitch_4
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8Bit(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1230
    :pswitch_5
    if-eqz p2, :cond_12

    iget-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    :goto_a
    if-eqz p2, :cond_11

    iget-object v6, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v7, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    :cond_11
    invoke-virtual {p1, v1, v5, v7}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    :cond_12
    move v5, v7

    goto :goto_a

    .line 1236
    :pswitch_6
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1240
    :pswitch_7
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto/16 :goto_5

    .line 1253
    :cond_13
    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v5, v5, 0x3

    packed-switch v5, :pswitch_data_2

    goto/16 :goto_6

    .line 1255
    :pswitch_8
    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_6

    .line 1258
    :pswitch_9
    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_6

    .line 1261
    :pswitch_a
    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_6

    .line 1264
    :pswitch_b
    sget-object v5, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_6

    .line 1218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 1138
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1253
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 879
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 871
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 964
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 901
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v2, :cond_1

    .line 902
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 903
    .local v1, iMwi:Lcom/android/internal/telephony/IMessageWaitingExt;
    invoke-interface {v1}, Lcom/android/internal/telephony/IMessageWaitingExt;->getVoiceMailCount()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/IMessageWaitingExt;->getVoiceMailCount()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    .line 915
    .end local v1           #iMwi:Lcom/android/internal/telephony/IMessageWaitingExt;
    :cond_0
    :goto_0
    return v3

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, ex:Ljava/lang/ClassCastException;
    const-string v2, "GSM"

    const-string v4, "SmsHeader unsupports IMessageWaitingExt"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    .end local v0           #ex:Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-eqz v2, :cond_0

    .line 915
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 923
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v2, :cond_1

    .line 924
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 925
    .local v1, iMwi:Lcom/android/internal/telephony/IMessageWaitingExt;
    invoke-interface {v1}, Lcom/android/internal/telephony/IMessageWaitingExt;->getVoiceMailCount()I

    move-result v2

    if-ltz v2, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/IMessageWaitingExt;->getVoiceMailCount()I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    .line 937
    .end local v1           #iMwi:Lcom/android/internal/telephony/IMessageWaitingExt;
    :cond_0
    :goto_0
    return v3

    .line 929
    :catch_0
    move-exception v0

    .line 930
    .local v0, ex:Ljava/lang/ClassCastException;
    const-string v2, "GSM"

    const-string v4, "SmsHeader unsupports IMessageWaitingExt"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    .end local v0           #ex:Ljava/lang/ClassCastException;
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v2, :cond_0

    .line 937
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 944
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v1, :cond_1

    .line 958
    :cond_0
    :goto_0
    return v0

    .line 948
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 958
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 885
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 970
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
