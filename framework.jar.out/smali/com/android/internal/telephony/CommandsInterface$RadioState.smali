.class public final enum Lcom/android/internal/telephony/CommandsInterface$RadioState;
.super Ljava/lang/Enum;
.source "CommandsInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CommandsInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RadioState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/CommandsInterface$RadioState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

.field public static final enum SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;


# instance fields
.field private stateType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 66
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RADIO_OFF"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 67
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RADIO_UNAVAILABLE"

    invoke-direct {v0, v1, v3, v5}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 68
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "SIM_NOT_READY"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 69
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "SIM_LOCKED_OR_ABSENT"

    invoke-direct {v0, v1, v6, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "SIM_READY"

    invoke-direct {v0, v1, v7, v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RUIM_NOT_READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RUIM_READY"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RUIM_LOCKED_OR_ABSENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "NV_NOT_READY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "NV_READY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v6}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    const-string v1, "RADIO_ON"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    .line 65
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/internal/telephony/CommandsInterface$RadioState;

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_ON:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

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
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 96
    iput p3, p0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->stateType:I

    .line 97
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1
    .parameter "name"

    .prologue
    .line 65
    const-class v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/CommandsInterface$RadioState;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->$VALUES:[Lcom/android/internal/telephony/CommandsInterface$RadioState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/CommandsInterface$RadioState;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->stateType:I

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCdma()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 130
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 133
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGsm()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    invoke-static {}, Lcom/android/internal/telephony/BaseCommands;->getLteOnCdmaModeStatic()I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public isNVReady()Z
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOn()Z
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_LOCKED_OR_ABSENT:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_NOT_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->NV_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRUIMReady()Z
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RUIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSIMReady()Z
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/internal/telephony/CommandsInterface$RadioState;->SIM_READY:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
