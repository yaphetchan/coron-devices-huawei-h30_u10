.class public final enum Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;
.super Ljava/lang/Enum;
.source "HuaweiATUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/atcommand/HuaweiATUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

.field public static final enum SIM_ABSENT:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

.field public static final enum SIM_NOT_READY:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

.field public static final enum SIM_PIN:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

.field public static final enum SIM_PUK:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

.field public static final enum SIM_READY:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;


# instance fields
.field private mSimStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    const-string v1, "SIM_ABSENT"

    invoke-direct {v0, v1, v2, v2}, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->SIM_ABSENT:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    .line 64
    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    const-string v1, "SIM_NOT_READY"

    invoke-direct {v0, v1, v3, v3}, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->SIM_NOT_READY:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    .line 65
    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    const-string v1, "SIM_READY"

    invoke-direct {v0, v1, v4, v4}, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->SIM_READY:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    .line 66
    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    const-string v1, "SIM_PIN"

    invoke-direct {v0, v1, v5, v5}, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->SIM_PIN:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    .line 67
    new-instance v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    const-string v1, "SIM_PUK"

    invoke-direct {v0, v1, v6, v6}, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->SIM_PUK:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    .line 62
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->SIM_ABSENT:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->SIM_NOT_READY:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->SIM_READY:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->SIM_PIN:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->SIM_PUK:Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->$VALUES:[Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 72
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromInt(I)Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;
    .locals 2
    .parameter "status"

    .prologue
    .line 80
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;
    .locals 1
    .parameter "name"

    .prologue
    .line 62
    const-class v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    return-object v0
.end method

.method public static values()[Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;->$VALUES:[Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/atcommand/HuaweiATUtils$SimStatus;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 2

    .prologue
    .line 76
    new-instance v0, Lcom/huawei/android/util/NoExtAPIException;

    const-string v1, "method not supported."

    invoke-direct {v0, v1}, Lcom/huawei/android/util/NoExtAPIException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
