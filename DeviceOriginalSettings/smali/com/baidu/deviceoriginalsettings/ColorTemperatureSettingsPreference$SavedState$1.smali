.class final Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState$1;
.super Ljava/lang/Object;
.source "ColorTemperatureSettingsPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;
    .locals 1
    .parameter "in"

    .prologue
    .line 311
    new-instance v0, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;
    .locals 1
    .parameter "size"

    .prologue
    .line 315
    new-array v0, p1, [Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState$1;->newArray(I)[Lcom/baidu/deviceoriginalsettings/ColorTemperatureSettingsPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
