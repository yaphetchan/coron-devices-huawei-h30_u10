.class public Lcom/mediatek/op/telephony/TelephonyExt;
.super Ljava/lang/Object;
.source "TelephonyExt.java"

# interfaces
.implements Lcom/mediatek/common/telephony/ITelephonyExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isAutoSwitchDataToEnabledSim()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultDataOn()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public isDefaultEnable3GSIMDataWhenNewSIMInserted()Z
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public isRatMenuControlledBySIM()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public isSetLanguageBySIM()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
