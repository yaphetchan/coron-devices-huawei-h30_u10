.class final Landroid/content/SyncStatusInfo$1;
.super Ljava/lang/Object;
.source "SyncStatusInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncStatusInfo;
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
        "Landroid/content/SyncStatusInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/SyncStatusInfo;
    .locals 1
    .parameter "in"

    .prologue
    .line 171
    new-instance v0, Landroid/content/SyncStatusInfo;

    invoke-direct {v0, p1}, Landroid/content/SyncStatusInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Landroid/content/SyncStatusInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/SyncStatusInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 175
    new-array v0, p1, [Landroid/content/SyncStatusInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Landroid/content/SyncStatusInfo$1;->newArray(I)[Landroid/content/SyncStatusInfo;

    move-result-object v0

    return-object v0
.end method
