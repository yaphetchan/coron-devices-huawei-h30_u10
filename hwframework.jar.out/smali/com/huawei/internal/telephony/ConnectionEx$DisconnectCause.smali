.class public final enum Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;
.super Ljava/lang/Enum;
.source "ConnectionEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/internal/telephony/ConnectionEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisconnectCause"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum BUSY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CALL_BARRED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CDMA_ACCESS_BLOCKED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CDMA_ACCESS_FAILURE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CDMA_DROP:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CDMA_INTERCEPT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CDMA_NOT_EMERGENCY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CDMA_PREEMPTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CDMA_REORDER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CDMA_RETRY_ORDER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CDMA_SO_REJECT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CONGESTION:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CS_RESTRICTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CS_RESTRICTED_EMERGENCY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum CS_RESTRICTED_NORMAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum DIAL_MODIFIED_TO_DIAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum DIAL_MODIFIED_TO_SS:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum DIAL_MODIFIED_TO_USSD:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum ERROR_UNSPECIFIED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum FDN_BLOCKED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum ICC_ERROR:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum INCOMING_MISSED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum INCOMING_REJECTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum INVALID_CREDENTIALS:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum INVALID_NUMBER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum LIMIT_EXCEEDED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum LOCAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum LOST_SIGNAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum MMI:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum NORMAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum NOT_DISCONNECTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum NUMBER_UNREACHABLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum OUT_OF_NETWORK:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum OUT_OF_SERVICE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum POWER_OFF:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum SERVER_ERROR:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum SERVER_UNREACHABLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum TIMED_OUT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

.field public static final enum UNOBTAINABLE_NUMBER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "NOT_DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NOT_DISCONNECTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 29
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "INCOMING_MISSED"

    invoke-direct {v0, v1, v4}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INCOMING_MISSED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 30
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NORMAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 31
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v6}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LOCAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 32
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "BUSY"

    invoke-direct {v0, v1, v7}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->BUSY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 33
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CONGESTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CONGESTION:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 34
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "MMI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->MMI:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 35
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "INVALID_NUMBER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INVALID_NUMBER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 36
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "NUMBER_UNREACHABLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 37
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "SERVER_UNREACHABLE"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->SERVER_UNREACHABLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 38
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "INVALID_CREDENTIALS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INVALID_CREDENTIALS:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 39
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "OUT_OF_NETWORK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->OUT_OF_NETWORK:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 40
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "SERVER_ERROR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->SERVER_ERROR:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 41
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "TIMED_OUT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->TIMED_OUT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 42
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "LOST_SIGNAL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LOST_SIGNAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 43
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "LIMIT_EXCEEDED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LIMIT_EXCEEDED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 44
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "INCOMING_REJECTED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INCOMING_REJECTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 45
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "POWER_OFF"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->POWER_OFF:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 46
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "OUT_OF_SERVICE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->OUT_OF_SERVICE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 47
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "ICC_ERROR"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->ICC_ERROR:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 48
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CALL_BARRED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CALL_BARRED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 49
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "FDN_BLOCKED"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->FDN_BLOCKED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 50
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CS_RESTRICTED"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 51
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CS_RESTRICTED_NORMAL"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 52
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CS_RESTRICTED_EMERGENCY"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 53
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "UNOBTAINABLE_NUMBER"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 54
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "DIAL_MODIFIED_TO_USSD"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_USSD:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 55
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "DIAL_MODIFIED_TO_SS"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_SS:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 56
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "DIAL_MODIFIED_TO_DIAL"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_DIAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 57
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CDMA_LOCKED_UNTIL_POWER_CYCLE"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 58
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CDMA_DROP"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_DROP:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 59
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CDMA_INTERCEPT"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_INTERCEPT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 60
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CDMA_REORDER"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_REORDER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 61
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CDMA_SO_REJECT"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_SO_REJECT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 62
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CDMA_RETRY_ORDER"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 63
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CDMA_ACCESS_FAILURE"

    const/16 v2, 0x23

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 64
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CDMA_PREEMPTED"

    const/16 v2, 0x24

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_PREEMPTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 65
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CDMA_NOT_EMERGENCY"

    const/16 v2, 0x25

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 66
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "CDMA_ACCESS_BLOCKED"

    const/16 v2, 0x26

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 67
    new-instance v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    const-string v1, "ERROR_UNSPECIFIED"

    const/16 v2, 0x27

    invoke-direct {v0, v1, v2}, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    .line 27
    const/16 v0, 0x28

    new-array v0, v0, [Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    sget-object v1, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NOT_DISCONNECTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INCOMING_MISSED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NORMAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LOCAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v1, v0, v6

    sget-object v1, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->BUSY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CONGESTION:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->MMI:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INVALID_NUMBER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->NUMBER_UNREACHABLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->SERVER_UNREACHABLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INVALID_CREDENTIALS:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->OUT_OF_NETWORK:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->SERVER_ERROR:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->TIMED_OUT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LOST_SIGNAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->LIMIT_EXCEEDED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->INCOMING_REJECTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->POWER_OFF:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->OUT_OF_SERVICE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->ICC_ERROR:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CALL_BARRED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->FDN_BLOCKED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_USSD:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_SS:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->DIAL_MODIFIED_TO_DIAL:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_LOCKED_UNTIL_POWER_CYCLE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_DROP:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_INTERCEPT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x20

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_REORDER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x21

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_SO_REJECT:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x22

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_RETRY_ORDER:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x23

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_ACCESS_FAILURE:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x24

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_PREEMPTED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x25

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_NOT_EMERGENCY:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x26

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->CDMA_ACCESS_BLOCKED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    const/16 v1, 0x27

    sget-object v2, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    aput-object v2, v0, v1

    sput-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->$VALUES:[Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;
    .locals 1
    .parameter "name"

    .prologue
    .line 27
    const-class v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    return-object v0
.end method

.method public static values()[Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;->$VALUES:[Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/internal/telephony/ConnectionEx$DisconnectCause;

    return-object v0
.end method
