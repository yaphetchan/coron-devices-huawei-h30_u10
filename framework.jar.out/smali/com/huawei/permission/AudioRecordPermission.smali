.class public Lcom/huawei/permission/AudioRecordPermission;
.super Ljava/lang/Object;
.source "AudioRecordPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioRecordPermission"

.field private static final mp3Data:[B


# instance fields
.field public isAudioRecordBlocked:Z

.field private mContext:Landroid/content/Context;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/16 v0, 0x70d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/permission/AudioRecordPermission;->mp3Data:[B

    return-void

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x1ct
        0x66t
        0x74t
        0x79t
        0x70t
        0x6dt
        0x70t
        0x34t
        0x32t
        0x0t
        0x0t
        0x0t
        0x1t
        0x69t
        0x73t
        0x6ft
        0x6dt
        0x6dt
        0x70t
        0x34t
        0x32t
        0x33t
        0x67t
        0x70t
        0x35t
        0x0t
        0x0t
        0x6t
        0x5et
        0x6dt
        0x6ft
        0x6ft
        0x76t
        0x0t
        0x0t
        0x0t
        0x6ct
        0x6dt
        0x76t
        0x68t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0x0t
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x2t
        0x58t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x65t
        0x0t
        0x0t
        0x0t
        0x21t
        0x69t
        0x6ft
        0x64t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x10t
        0x13t
        0x0t
        0x4ft
        0x1t
        0x1t
        0x28t
        0xfft
        0x1t
        0xet
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0xet
        0x4t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x1t
        0xcct
        0x74t
        0x72t
        0x61t
        0x6bt
        0x0t
        0x0t
        0x0t
        0x5ct
        0x74t
        0x6bt
        0x68t
        0x64t
        0x0t
        0x0t
        0x0t
        0x1t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0x0t
        0x0t
        0x0t
        0x65t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x33t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x14t
        0x74t
        0x72t
        0x65t
        0x66t
        0x0t
        0x0t
        0x0t
        0xct
        0x73t
        0x79t
        0x6et
        0x63t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x54t
        0x6dt
        0x64t
        0x69t
        0x61t
        0x0t
        0x0t
        0x0t
        0x20t
        0x6dt
        0x64t
        0x68t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0x0t
        0x0t
        0x1ft
        0x40t
        0x0t
        0x0t
        0x10t
        0x0t
        0x55t
        0xc4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x21t
        0x68t
        0x64t
        0x6ct
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x73t
        0x6ft
        0x75t
        0x6et
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0xbt
        0x6dt
        0x69t
        0x6et
        0x66t
        0x0t
        0x0t
        0x0t
        0x10t
        0x73t
        0x6dt
        0x68t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x24t
        0x64t
        0x69t
        0x6et
        0x66t
        0x0t
        0x0t
        0x0t
        0x1ct
        0x64t
        0x72t
        0x65t
        0x66t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xct
        0x75t
        0x72t
        0x6ct
        0x20t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xcft
        0x73t
        0x74t
        0x62t
        0x6ct
        0x0t
        0x0t
        0x0t
        0x5bt
        0x73t
        0x74t
        0x73t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x4bt
        0x6dt
        0x70t
        0x34t
        0x61t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x10t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x27t
        0x65t
        0x73t
        0x64t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x19t
        0x0t
        0x0t
        0x0t
        0x4t
        0x11t
        0x40t
        0x15t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x5t
        0x2t
        0x15t
        0x88t
        0x6t
        0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x18t
        0x73t
        0x74t
        0x74t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ct
        0x73t
        0x74t
        0x73t
        0x63t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x24t
        0x73t
        0x74t
        0x73t
        0x7at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4t
        0x0t
        0x0t
        0x0t
        0x30t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x14t
        0x73t
        0x74t
        0x63t
        0x6ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x6t
        0x82t
        0x0t
        0x0t
        0x1t
        0xc4t
        0x74t
        0x72t
        0x61t
        0x6bt
        0x0t
        0x0t
        0x0t
        0x5ct
        0x74t
        0x6bt
        0x68t
        0x64t
        0x0t
        0x0t
        0x0t
        0x1t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0x0t
        0x0t
        0x0t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x74t
        0x72t
        0x65t
        0x66t
        0x0t
        0x0t
        0x0t
        0xct
        0x73t
        0x79t
        0x6et
        0x63t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xct
        0x6dt
        0x70t
        0x6ft
        0x64t
        0x0t
        0x0t
        0x0t
        0x65t
        0x0t
        0x0t
        0x1t
        0x40t
        0x6dt
        0x64t
        0x69t
        0x61t
        0x0t
        0x0t
        0x0t
        0x20t
        0x6dt
        0x64t
        0x68t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0x0t
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x2t
        0x58t
        0x55t
        0xc4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x37t
        0x68t
        0x64t
        0x6ct
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6ft
        0x64t
        0x73t
        0x6dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x47t
        0x50t
        0x41t
        0x43t
        0x20t
        0x4dt
        0x50t
        0x45t
        0x47t
        0x2dt
        0x34t
        0x20t
        0x4ft
        0x44t
        0x20t
        0x48t
        0x61t
        0x6et
        0x64t
        0x6ct
        0x65t
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0xe1t
        0x6dt
        0x69t
        0x6et
        0x66t
        0x0t
        0x0t
        0x0t
        0xct
        0x6et
        0x6dt
        0x68t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x24t
        0x64t
        0x69t
        0x6et
        0x66t
        0x0t
        0x0t
        0x0t
        0x1ct
        0x64t
        0x72t
        0x65t
        0x66t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xct
        0x75t
        0x72t
        0x6ct
        0x20t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xa9t
        0x73t
        0x74t
        0x62t
        0x6ct
        0x0t
        0x0t
        0x0t
        0x45t
        0x73t
        0x74t
        0x73t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x35t
        0x6dt
        0x70t
        0x34t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x25t
        0x65t
        0x73t
        0x64t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x17t
        0x0t
        0x0t
        0x0t
        0x4t
        0xft
        0x1t
        0x5t
        0x0t
        0x0t
        0x32t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x0t
        0x6t
        0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x18t
        0x73t
        0x74t
        0x74t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x1ct
        0x73t
        0x74t
        0x73t
        0x63t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x14t
        0x73t
        0x74t
        0x73t
        0x7at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x14t
        0x73t
        0x74t
        0x63t
        0x6ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x6t
        0xc4t
        0x0t
        0x0t
        0x1t
        0xbat
        0x74t
        0x72t
        0x61t
        0x6bt
        0x0t
        0x0t
        0x0t
        0x5ct
        0x74t
        0x6bt
        0x68t
        0x64t
        0x0t
        0x0t
        0x0t
        0x1t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x40t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x56t
        0x6dt
        0x64t
        0x69t
        0x61t
        0x0t
        0x0t
        0x0t
        0x20t
        0x6dt
        0x64t
        0x68t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0xcdt
        0x75t
        0x95t
        0xe7t
        0x0t
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x2t
        0x58t
        0x55t
        0xc4t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x46t
        0x68t
        0x64t
        0x6ct
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x73t
        0x64t
        0x73t
        0x6dt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x47t
        0x50t
        0x41t
        0x43t
        0x20t
        0x4dt
        0x50t
        0x45t
        0x47t
        0x2dt
        0x34t
        0x20t
        0x53t
        0x63t
        0x65t
        0x6et
        0x65t
        0x20t
        0x44t
        0x65t
        0x73t
        0x63t
        0x72t
        0x69t
        0x70t
        0x74t
        0x69t
        0x6ft
        0x6et
        0x20t
        0x48t
        0x61t
        0x6et
        0x64t
        0x6ct
        0x65t
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0xe8t
        0x6dt
        0x69t
        0x6et
        0x66t
        0x0t
        0x0t
        0x0t
        0xct
        0x6et
        0x6dt
        0x68t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x24t
        0x64t
        0x69t
        0x6et
        0x66t
        0x0t
        0x0t
        0x0t
        0x1ct
        0x64t
        0x72t
        0x65t
        0x66t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xct
        0x75t
        0x72t
        0x6ct
        0x20t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0xb0t
        0x73t
        0x74t
        0x62t
        0x6ct
        0x0t
        0x0t
        0x0t
        0x4ct
        0x73t
        0x74t
        0x73t
        0x64t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x3ct
        0x6dt
        0x70t
        0x34t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x2ct
        0x65t
        0x73t
        0x64t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3t
        0x1et
        0x0t
        0x0t
        0x0t
        0x4t
        0x16t
        0x2t
        0xdt
        0x0t
        0x0t
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x5t
        0x7t
        0x0t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6t
        0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x18t
        0x73t
        0x74t
        0x74t
        0x73t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x1ct
        0x73t
        0x74t
        0x73t
        0x63t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x14t
        0x73t
        0x74t
        0x73t
        0x7at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x8t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x14t
        0x73t
        0x74t
        0x63t
        0x6ft
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x6t
        0xcet
        0x0t
        0x0t
        0x0t
        0x7ft
        0x75t
        0x64t
        0x74t
        0x61t
        0x0t
        0x0t
        0x0t
        0x77t
        0x6dt
        0x65t
        0x74t
        0x61t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x21t
        0x68t
        0x64t
        0x6ct
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x6dt
        0x64t
        0x69t
        0x72t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x4at
        0x69t
        0x6ct
        0x73t
        0x74t
        0x0t
        0x0t
        0x0t
        0x42t
        0xa9t
        0x74t
        0x6ft
        0x6ft
        0x0t
        0x0t
        0x0t
        0x3at
        0x64t
        0x61t
        0x74t
        0x61t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x59t
        0x61t
        0x6dt
        0x62t
        0x20t
        0x32t
        0x2et
        0x31t
        0x2et
        0x30t
        0x2et
        0x30t
        0x20t
        0x5bt
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x79t
        0x61t
        0x6dt
        0x62t
        0x2et
        0x75t
        0x6et
        0x69t
        0x74t
        0x65t
        0x2dt
        0x76t
        0x69t
        0x64t
        0x65t
        0x6ft
        0x2et
        0x63t
        0x6ft
        0x6dt
        0x5dt
        0x0t
        0x0t
        0x0t
        0x5ct
        0x6dt
        0x64t
        0x61t
        0x74t
        0xdet
        0x36t
        0x0t
        0x0t
        0x6ct
        0x69t
        0x62t
        0x66t
        0x61t
        0x61t
        0x63t
        0x20t
        0x31t
        0x2et
        0x32t
        0x36t
        0x2et
        0x31t
        0x20t
        0x28t
        0x41t
        0x75t
        0x67t
        0x20t
        0x31t
        0x36t
        0x20t
        0x32t
        0x30t
        0x30t
        0x38t
        0x29t
        0x20t
        0x55t
        0x4et
        0x53t
        0x54t
        0x41t
        0x42t
        0x4ct
        0x45t
        0x0t
        0x0t
        0x1t
        0x90t
        0x1t
        0x0t
        0x47t
        0x0t
        0xc8t
        0x0t
        0x80t
        0x23t
        0x80t
        0x0t
        0xc8t
        0x0t
        0x80t
        0x23t
        0x80t
        0x0t
        0xc8t
        0x0t
        0x80t
        0x23t
        0x80t
        0x1t
        0x8t
        0x11t
        0x6t
        0x2t
        0x9ft
        0xft
        0x2t
        0x0t
        0x1t
        0xc0t
        0x10t
        0x12t
        0x81t
        0x30t
        0x2at
        0x5t
        0x7ct
        0x0t
        0x0t
        0x0t
        0x37t
        0x66t
        0x72t
        0x65t
        0x65t
        0x49t
        0x73t
        0x6ft
        0x4dt
        0x65t
        0x64t
        0x69t
        0x61t
        0x20t
        0x46t
        0x69t
        0x6ct
        0x65t
        0x20t
        0x50t
        0x72t
        0x6ft
        0x64t
        0x75t
        0x63t
        0x65t
        0x64t
        0x20t
        0x77t
        0x69t
        0x74t
        0x68t
        0x20t
        0x47t
        0x50t
        0x41t
        0x43t
        0x20t
        0x30t
        0x2et
        0x34t
        0x2et
        0x36t
        0x2dt
        0x44t
        0x45t
        0x56t
        0x2dt
        0x72t
        0x65t
        0x76t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/permission/AudioRecordPermission;->isAudioRecordBlocked:Z

    .line 21
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/permission/AudioRecordPermission;->mUid:I

    .line 23
    const-string v0, "AudioRecordPermission"

    const-string v1, "AudioRecordPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method

.method public static getData()[B
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/huawei/permission/AudioRecordPermission;->mp3Data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    return-object v0
.end method


# virtual methods
.method public remind()V
    .locals 5

    .prologue
    const/16 v4, 0x80

    .line 27
    iget-object v1, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 28
    iget-object v1, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/permission/AudioRecordPermission;->mUid:I

    invoke-static {v1, v2}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    :cond_2
    iget v1, p0, Lcom/huawei/permission/AudioRecordPermission;->mUid:I

    const/4 v2, 0x0

    invoke-static {v4, v1, v2}, Lcom/huawei/permission/StubController;->holdForGetPermissionSelection(IILjava/lang/String;)I

    move-result v0

    .line 45
    .local v0, selectionResult:I
    if-nez v0, :cond_4

    .line 46
    const-string v1, "AudioRecordPermission"

    const-string v2, "AudioRecordPermission holdForGetPermissionSelection error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 36
    .end local v0           #selectionResult:I
    :cond_3
    iget-object v1, p0, Lcom/huawei/permission/AudioRecordPermission;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/huawei/permission/AudioRecordPermission;->mUid:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/huawei/permission/StubController;->checkSystemAppInternal(Landroid/content/Context;IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 50
    .restart local v0       #selectionResult:I
    :cond_4
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/huawei/permission/AudioRecordPermission;->isAudioRecordBlocked:Z

    goto :goto_0
.end method
