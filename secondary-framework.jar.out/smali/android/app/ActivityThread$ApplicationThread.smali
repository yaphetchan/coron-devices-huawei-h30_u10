.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/ApplicationThreadNative;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final ACTIVITY_THREAD_CHECKIN_VERSION:I = 0x1

.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"

.field private static final HEAP_COLUMN:Ljava/lang/String; = "%13s %8s %8s %8s %8s %8s %8s"

.field private static final ONE_COUNT_COLUMN:Ljava/lang/String; = "%21s %8d"

.field private static final TWO_COUNT_COLUMNS:Ljava/lang/String; = "%21s %8d %21s %8d"


# instance fields
.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/ApplicationThreadNative;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 587
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;ZZ)Landroid/os/Debug$MemoryInfo;
    .locals 50
    .parameter "pw"
    .parameter "checkin"
    .parameter "all"

    .prologue
    .line 962
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v42

    const-wide/16 v44, 0x400

    div-long v28, v42, v44

    .line 963
    .local v28, nativeMax:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v42

    const-wide/16 v44, 0x400

    div-long v24, v42, v44

    .line 964
    .local v24, nativeAllocated:J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v42

    const-wide/16 v44, 0x400

    div-long v26, v42, v44

    .line 966
    .local v26, nativeFree:J
    new-instance v23, Landroid/os/Debug$MemoryInfo;

    invoke-direct/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 967
    .local v23, memInfo:Landroid/os/Debug$MemoryInfo;
    invoke-static/range {v23 .. v23}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 969
    if-nez p3, :cond_1

    .line 1150
    :cond_0
    :goto_0
    return-object v23

    .line 973
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v36

    .line 975
    .local v36, runtime:Ljava/lang/Runtime;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v42

    const-wide/16 v44, 0x400

    div-long v17, v42, v44

    .line 976
    .local v17, dalvikMax:J
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v42

    const-wide/16 v44, 0x400

    div-long v15, v42, v44

    .line 977
    .local v15, dalvikFree:J
    sub-long v13, v17, v15

    .line 978
    .local v13, dalvikAllocated:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v38

    .line 979
    .local v38, viewInstanceCount:J
    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v40

    .line 980
    .local v40, viewRootInstanceCount:J
    const-class v42, Landroid/app/ContextImpl;

    invoke-static/range {v42 .. v42}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v7

    .line 981
    .local v7, appContextInstanceCount:J
    const-class v42, Landroid/app/Activity;

    invoke-static/range {v42 .. v42}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v5

    .line 982
    .local v5, activityInstanceCount:J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v20

    .line 983
    .local v20, globalAssetCount:I
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v21

    .line 984
    .local v21, globalAssetManagerCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v11

    .line 985
    .local v11, binderLocalObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v12

    .line 986
    .local v12, binderProxyObjectCount:I
    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v10

    .line 987
    .local v10, binderDeathObjectCount:I
    const-class v42, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLSocketImpl;

    invoke-static/range {v42 .. v42}, Landroid/os/Debug;->countInstancesOfClass(Ljava/lang/Class;)J

    move-result-wide v30

    .line 988
    .local v30, openSslSocketCount:J
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v37

    .line 991
    .local v37, stats:Landroid/database/sqlite/SQLiteDebug$PagerStats;
    if-eqz p2, :cond_4

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v42, v0

    if-eqz v42, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object/from16 v35, v0

    .line 998
    .local v35, processName:Ljava/lang/String;
    :goto_1
    const/16 v42, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 999
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v42

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1000
    move-object/from16 v0, p1

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1003
    move-object/from16 v0, p1

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1004
    move-object/from16 v0, p1

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1005
    const-string v42, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    add-long v42, v28, v17

    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1009
    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1010
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1011
    const-string v42, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    add-long v42, v24, v13

    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1015
    move-object/from16 v0, p1

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1016
    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1017
    const-string v42, "N/A,"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1018
    add-long v42, v26, v15

    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1021
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1022
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1023
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1024
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v42, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1027
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1028
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1029
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1030
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v42, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1031
    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1034
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1035
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1036
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1037
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v42, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v43, v0

    add-int v42, v42, v43

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1038
    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1041
    move-object/from16 v0, p1

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1042
    move-object/from16 v0, p1

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1043
    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1044
    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1046
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1047
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1048
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1049
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1051
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1052
    move-object/from16 v0, p1

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1055
    move-object/from16 v0, v37

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v42, v0

    move/from16 v0, v42

    div-int/lit16 v0, v0, 0x400

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1056
    move-object/from16 v0, v37

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v42, v0

    move/from16 v0, v42

    div-int/lit16 v0, v0, 0x400

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1057
    move-object/from16 v0, v37

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    move/from16 v42, v0

    move/from16 v0, v42

    div-int/lit16 v0, v0, 0x400

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1058
    move-object/from16 v0, v37

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v42, v0

    move/from16 v0, v42

    div-int/lit16 v0, v0, 0x400

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1059
    const/16 v22, 0x0

    .local v22, i:I
    :goto_2
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v42

    move/from16 v0, v22

    move/from16 v1, v42

    if-ge v0, v1, :cond_3

    .line 1060
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1061
    .local v19, dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v42, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1063
    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v42, v0

    move-object/from16 v0, p1

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 1064
    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v42, v0

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1065
    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1066
    const/16 v42, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 994
    .end local v19           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    .end local v22           #i:I
    .end local v35           #processName:Ljava/lang/String;
    :cond_2
    const-string v35, "unknown"

    goto/16 :goto_1

    .line 1068
    .restart local v22       #i:I
    .restart local v35       #processName:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0

    .line 1074
    .end local v22           #i:I
    .end local v35           #processName:Ljava/lang/String;
    :cond_4
    const-string v42, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v43, 0x7

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, ""

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, ""

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "Shared"

    aput-object v45, v43, v44

    const/16 v44, 0x3

    const-string v45, "Private"

    aput-object v45, v43, v44

    const/16 v44, 0x4

    const-string v45, "Heap"

    aput-object v45, v43, v44

    const/16 v44, 0x5

    const-string v45, "Heap"

    aput-object v45, v43, v44

    const/16 v44, 0x6

    const-string v45, "Heap"

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1075
    const-string v42, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v43, 0x7

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, ""

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, "Pss"

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "Dirty"

    aput-object v45, v43, v44

    const/16 v44, 0x3

    const-string v45, "Dirty"

    aput-object v45, v43, v44

    const/16 v44, 0x4

    const-string v45, "Size"

    aput-object v45, v43, v44

    const/16 v44, 0x5

    const-string v45, "Alloc"

    aput-object v45, v43, v44

    const/16 v44, 0x6

    const-string v45, "Free"

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1076
    const-string v42, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v43, 0x7

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, ""

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, "------"

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "------"

    aput-object v45, v43, v44

    const/16 v44, 0x3

    const-string v45, "------"

    aput-object v45, v43, v44

    const/16 v44, 0x4

    const-string v45, "------"

    aput-object v45, v43, v44

    const/16 v44, 0x5

    const-string v45, "------"

    aput-object v45, v43, v44

    const/16 v44, 0x6

    const-string v45, "------"

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    const-string v42, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v43, 0x7

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "Native"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x4

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x5

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x6

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1080
    const-string v42, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v43, 0x7

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "Dalvik"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x4

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x5

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x6

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v33, v0

    .line 1084
    .local v33, otherPss:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v34, v0

    .line 1085
    .local v34, otherSharedDirty:I
    move-object/from16 v0, v23

    iget v0, v0, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v32, v0

    .line 1087
    .local v32, otherPrivateDirty:I
    const/16 v22, 0x0

    .restart local v22       #i:I
    :goto_3
    const/16 v42, 0x9

    move/from16 v0, v22

    move/from16 v1, v42

    if-ge v0, v1, :cond_5

    .line 1088
    const-string v42, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v43, 0x7

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-static/range {v22 .. v22}, Landroid/os/Debug$MemoryInfo;->getOtherLabel(I)Ljava/lang/String;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x4

    const-string v45, ""

    aput-object v45, v43, v44

    const/16 v44, 0x5

    const-string v45, ""

    aput-object v45, v43, v44

    const/16 v44, 0x6

    const-string v45, ""

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1091
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPss(I)I

    move-result v42

    sub-int v33, v33, v42

    .line 1092
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherSharedDirty(I)I

    move-result v42

    sub-int v34, v34, v42

    .line 1093
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Debug$MemoryInfo;->getOtherPrivateDirty(I)I

    move-result v42

    sub-int v32, v32, v42

    .line 1087
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 1096
    :cond_5
    const-string v42, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v43, 0x7

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "Unknown"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x4

    const-string v45, ""

    aput-object v45, v43, v44

    const/16 v44, 0x5

    const-string v45, ""

    aput-object v45, v43, v44

    const/16 v44, 0x6

    const-string v45, ""

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1098
    const-string v42, "%13s %8s %8s %8s %8s %8s %8s"

    const/16 v43, 0x7

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "TOTAL"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    invoke-virtual/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    invoke-virtual/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x3

    invoke-virtual/range {v23 .. v23}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x4

    add-long v45, v28, v17

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x5

    add-long v45, v24, v13

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x6

    add-long v45, v26, v15

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1103
    const-string v42, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    const-string v42, " Objects"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1105
    const-string v42, "%21s %8d %21s %8d"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "Views:"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "ViewRootImpl:"

    aput-object v45, v43, v44

    const/16 v44, 0x3

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1108
    const-string v42, "%21s %8d %21s %8d"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "AppContexts:"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "Activities:"

    aput-object v45, v43, v44

    const/16 v44, 0x3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    const-string v42, "%21s %8d %21s %8d"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "Assets:"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "AssetManagers:"

    aput-object v45, v43, v44

    const/16 v44, 0x3

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    const-string v42, "%21s %8d %21s %8d"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "Local Binders:"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "Proxy Binders:"

    aput-object v45, v43, v44

    const/16 v44, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1116
    const-string v42, "%21s %8d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "Death Recipients:"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1118
    const-string v42, "%21s %8d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "OpenSSL Sockets:"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    const-string v42, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1122
    const-string v42, " SQL"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1123
    const-string v42, "%21s %8d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "MEMORY_USED:"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, v37

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    move/from16 v45, v0

    move/from16 v0, v45

    div-int/lit16 v0, v0, 0x400

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1124
    const-string v42, "%21s %8d %21s %8d"

    const/16 v43, 0x4

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "PAGECACHE_OVERFLOW:"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, v37

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    move/from16 v45, v0

    move/from16 v0, v45

    div-int/lit16 v0, v0, 0x400

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "MALLOC_SIZE:"

    aput-object v45, v43, v44

    const/16 v44, 0x3

    move-object/from16 v0, v37

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    move/from16 v45, v0

    move/from16 v0, v45

    div-int/lit16 v0, v0, 0x400

    move/from16 v45, v0

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1126
    const-string v42, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1128
    .local v4, N:I
    if-lez v4, :cond_9

    .line 1129
    const-string v42, " DATABASES"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1130
    const-string v42, "  %8s %8s %14s %14s  %s"

    const/16 v43, 0x5

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    const-string v45, "pgsz"

    aput-object v45, v43, v44

    const/16 v44, 0x1

    const-string v45, "dbsz"

    aput-object v45, v43, v44

    const/16 v44, 0x2

    const-string v45, "Lookaside(b)"

    aput-object v45, v43, v44

    const/16 v44, 0x3

    const-string v45, "cache"

    aput-object v45, v43, v44

    const/16 v44, 0x4

    const-string v45, "Dbname"

    aput-object v45, v43, v44

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v42

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    if-ge v0, v4, :cond_9

    .line 1133
    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    move-object/from16 v42, v0

    move-object/from16 v0, v42

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1134
    .restart local v19       #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-string v43, "  %8s %8s %14s %14s  %s"

    const/16 v42, 0x5

    move/from16 v0, v42

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v46, v0

    const-wide/16 v48, 0x0

    cmp-long v42, v46, v48

    if-lez v42, :cond_6

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v42

    :goto_5
    aput-object v42, v44, v45

    const/16 v45, 0x1

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v46, v0

    const-wide/16 v48, 0x0

    cmp-long v42, v46, v48

    if-lez v42, :cond_7

    move-object/from16 v0, v19

    iget-wide v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    move-wide/from16 v46, v0

    invoke-static/range {v46 .. v47}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v42

    :goto_6
    aput-object v42, v44, v45

    const/16 v45, 0x2

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v42, v0

    if-lez v42, :cond_8

    move-object/from16 v0, v19

    iget v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    move/from16 v42, v0

    invoke-static/range {v42 .. v42}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v42

    :goto_7
    aput-object v42, v44, v45

    const/16 v42, 0x3

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    move-object/from16 v45, v0

    aput-object v45, v44, v42

    const/16 v42, 0x4

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    move-object/from16 v45, v0

    aput-object v45, v44, v42

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v43

    move-object/from16 v3, v44

    invoke-direct {v0, v1, v2, v3}, Landroid/app/ActivityThread$ApplicationThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1132
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_4

    .line 1134
    :cond_6
    const-string v42, " "

    goto :goto_5

    :cond_7
    const-string v42, " "

    goto :goto_6

    :cond_8
    const-string v42, " "

    goto :goto_7

    .line 1143
    .end local v19           #dbStats:Landroid/database/sqlite/SQLiteDebug$DbStats;
    :cond_9
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v9

    .line 1144
    .local v9, assetAlloc:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1145
    const-string v42, " "

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    const-string v42, " Asset Allocations"

    move-object/from16 v0, p1

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private varargs printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "pw"
    .parameter "format"
    .parameter "objs"

    .prologue
    .line 1173
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1174
    return-void
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 597
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v0, Landroid/app/ActivityThread;->mPackages:Ljava/util/HashMap;

    monitor-enter v1

    .line 598
    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v0, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 602
    :cond_1
    monitor-exit v1

    .line 603
    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public ResetSL()V
    .locals 3

    .prologue
    .line 871
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x90

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 872
    return-void
.end method

.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;ZLandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 4
    .parameter "processName"
    .parameter "appInfo"
    .parameter
    .parameter "instrumentationName"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .parameter "instrumentationArgs"
    .parameter "instrumentationWatcher"
    .parameter "debugMode"
    .parameter "enableOpenGlTrace"
    .parameter "isRestrictedBackupMode"
    .parameter "persistent"
    .parameter "config"
    .parameter "compatInfo"
    .parameter
    .parameter "coreSettings"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "IZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 779
    .local p3, providers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .local p16, services:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    if-eqz p16, :cond_0

    .line 781
    invoke-static/range {p16 .. p16}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 784
    :cond_0
    move-object/from16 v0, p17

    invoke-virtual {p0, v0}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 786
    new-instance v1, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v1}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 787
    .local v1, data:Landroid/app/ActivityThread$AppBindData;
    iput-object p1, v1, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 788
    iput-object p2, v1, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 789
    iput-object p3, v1, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 790
    iput-object p4, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 791
    iput-object p8, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 792
    iput-object p9, v1, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 793
    iput p10, v1, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 794
    iput-boolean p11, v1, Landroid/app/ActivityThread$AppBindData;->enableOpenGlTrace:Z

    .line 795
    move/from16 v0, p12

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 796
    move/from16 v0, p13

    iput-boolean v0, v1, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 797
    move-object/from16 v0, p14

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 798
    move-object/from16 v0, p15

    iput-object v0, v1, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 799
    iput-object p5, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFile:Ljava/lang/String;

    .line 800
    iput-object p6, v1, Landroid/app/ActivityThread$AppBindData;->initProfileFd:Landroid/os/ParcelFileDescriptor;

    .line 801
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/ActivityThread$AppBindData;->initAutoStopProfiler:Z

    .line 802
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x6e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 803
    return-void
.end method

.method public clearDnsCache()V
    .locals 0

    .prologue
    .line 828
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 829
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .parameter "cmd"
    .parameter "packages"

    .prologue
    .line 910
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 911
    return-void
.end method

.method public dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "activitytoken"
    .parameter "prefix"
    .parameter "args"

    .prologue
    .line 919
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 921
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 922
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 923
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 924
    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 925
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x88

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :goto_0
    return-void

    .line 926
    :catch_0
    move-exception v1

    .line 927
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpAllMessageHistory()V
    .locals 0

    .prologue
    .line 1199
    invoke-static {}, Landroid/app/ANRAppManager;->dumpAllMessageHistory()V

    .line 1200
    return-void
.end method

.method public dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 1161
    new-instance v1, Ljava/io/PrintWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1162
    .local v1, pw:Ljava/io/PrintWriter;
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, v1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1163
    .local v0, printer:Landroid/util/PrintWriterPrinter;
    invoke-static {v0, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 1165
    return-void
.end method

.method public dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "args"

    .prologue
    .line 1155
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    #calls: Landroid/app/ActivityThread;->dumpGraphicsInfo(Ljava/io/FileDescriptor;)V
    invoke-static {v0, p1}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    .line 1156
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;)V

    .line 1157
    return-void
.end method

.method public dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 4
    .parameter "managed"
    .parameter "path"
    .parameter "fd"

    .prologue
    .line 887
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 888
    .local v0, dhd:Landroid/app/ActivityThread$DumpHeapData;
    iput-object p2, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 889
    iput-object p3, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 890
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x87

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v2, v3, v0, v1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 891
    return-void

    .line 890
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dumpMemInfo(Ljava/io/FileDescriptor;ZZ[Ljava/lang/String;)Landroid/os/Debug$MemoryInfo;
    .locals 3
    .parameter "fd"
    .parameter "checkin"
    .parameter "all"
    .parameter "args"

    .prologue
    .line 948
    if-nez p1, :cond_0

    .line 949
    const/4 v2, 0x0

    .line 955
    :goto_0
    return-object v2

    .line 952
    :cond_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 953
    .local v0, fout:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 955
    .local v1, pw:Ljava/io/PrintWriter;
    :try_start_0
    invoke-direct {p0, v1, p2, p3}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;ZZ)Landroid/os/Debug$MemoryInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 957
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    throw v2
.end method

.method public dumpMessageHistory()V
    .locals 0

    .prologue
    .line 1194
    invoke-static {}, Landroid/app/ANRAppManager;->dumpMessageHistory()V

    .line 1195
    return-void
.end method

.method public dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "providertoken"
    .parameter "args"

    .prologue
    .line 933
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 935
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 936
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 937
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 938
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x8d

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    :goto_0
    return-void

    .line 939
    :catch_0
    move-exception v1

    .line 940
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpProvider failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "servicetoken"
    .parameter "args"

    .prologue
    .line 841
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 843
    .local v0, data:Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-static {p1}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 844
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 845
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 846
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    :goto_0
    return-void

    .line 847
    :catch_0
    move-exception v1

    .line 848
    .local v1, e:Ljava/io/IOException;
    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public enableLooperLog()V
    .locals 0

    .prologue
    .line 1205
    invoke-static {}, Landroid/app/ActivityThread;->enableLooperLog()V

    .line 1206
    return-void
.end method

.method public getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V
    .locals 0
    .parameter "outInfo"

    .prologue
    .line 906
    invoke-static {p1}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 907
    return-void
.end method

.method public processInBackground()V
    .locals 3

    .prologue
    const/16 v2, 0x78

    .line 836
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 837
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    return-void
.end method

.method public profilerControl(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .parameter "start"
    .parameter "path"
    .parameter "fd"
    .parameter "profileType"

    .prologue
    .line 880
    new-instance v0, Landroid/app/ActivityThread$ProfilerControlData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ProfilerControlData;-><init>()V

    .line 881
    .local v0, pcd:Landroid/app/ActivityThread$ProfilerControlData;
    iput-object p2, v0, Landroid/app/ActivityThread$ProfilerControlData;->path:Ljava/lang/String;

    .line 882
    iput-object p3, v0, Landroid/app/ActivityThread$ProfilerControlData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 883
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x7f

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v2, v3, v0, v1, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 884
    return-void

    .line 883
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestThumbnail(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 814
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x75

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 815
    return-void
.end method

.method public scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 875
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7d

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 876
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 3
    .parameter "token"
    .parameter "intent"
    .parameter "rebind"

    .prologue
    .line 735
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 736
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 737
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 738
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 743
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 744
    return-void
.end method

.method public scheduleConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 818
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 819
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x76

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 820
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 914
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 915
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .parameter "app"
    .parameter "compatInfo"
    .parameter "backupMode"

    .prologue
    .line 706
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 707
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 708
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 709
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 711
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 712
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "token"
    .parameter "info"
    .parameter "compatInfo"

    .prologue
    .line 725
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 726
    .local v0, s:Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 727
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 728
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 730
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 731
    return-void
.end method

.method public final scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "finishing"
    .parameter "configChanges"

    .prologue
    .line 690
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6d

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v2, p1, v0, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 692
    return-void

    .line 690
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "app"
    .parameter "compatInfo"

    .prologue
    .line 716
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 717
    .local v0, d:Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 718
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 720
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 721
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 807
    return-void
.end method

.method public final scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Z)V
    .locals 4
    .parameter "intent"
    .parameter "token"
    .parameter "ident"
    .parameter "info"
    .parameter "curConfig"
    .parameter "compatInfo"
    .parameter "state"
    .parameter
    .parameter
    .parameter "notResumed"
    .parameter "isForward"
    .parameter "profileName"
    .parameter "profileFd"
    .parameter "autoStopProfiler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;ZZ",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 649
    .local p8, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p9, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v1, Landroid/app/ActivityThread$ActivityClientRecord;

    invoke-direct {v1}, Landroid/app/ActivityThread$ActivityClientRecord;-><init>()V

    .line 651
    .local v1, r:Landroid/app/ActivityThread$ActivityClientRecord;
    iput-object p2, v1, Landroid/app/ActivityThread$ActivityClientRecord;->token:Landroid/os/IBinder;

    .line 652
    iput p3, v1, Landroid/app/ActivityThread$ActivityClientRecord;->ident:I

    .line 653
    iput-object p1, v1, Landroid/app/ActivityThread$ActivityClientRecord;->intent:Landroid/content/Intent;

    .line 654
    iput-object p4, v1, Landroid/app/ActivityThread$ActivityClientRecord;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 655
    iput-object p6, v1, Landroid/app/ActivityThread$ActivityClientRecord;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 656
    iput-object p7, v1, Landroid/app/ActivityThread$ActivityClientRecord;->state:Landroid/os/Bundle;

    .line 658
    iput-object p8, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingResults:Ljava/util/List;

    .line 659
    iput-object p9, v1, Landroid/app/ActivityThread$ActivityClientRecord;->pendingIntents:Ljava/util/List;

    .line 661
    iput-boolean p10, v1, Landroid/app/ActivityThread$ActivityClientRecord;->startsNotResumed:Z

    .line 662
    iput-boolean p11, v1, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    .line 664
    move-object/from16 v0, p12

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFile:Ljava/lang/String;

    .line 665
    move-object/from16 v0, p13

    iput-object v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->profileFd:Landroid/os/ParcelFileDescriptor;

    .line 666
    move/from16 v0, p14

    iput-boolean v0, v1, Landroid/app/ActivityThread$ActivityClientRecord;->autoStopProfiler:Z

    .line 668
    invoke-direct {p0, p5}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    .line 670
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v3, 0x64

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v2, v3, v1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 671
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .prologue
    .line 863
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 864
    return-void
.end method

.method public final scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter "token"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 681
    .local p1, intents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    new-instance v0, Landroid/app/ActivityThread$NewIntentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$NewIntentData;-><init>()V

    .line 682
    .local v0, data:Landroid/app/ActivityThread$NewIntentData;
    iput-object p1, v0, Landroid/app/ActivityThread$NewIntentData;->intents:Ljava/util/List;

    .line 683
    iput-object p2, v0, Landroid/app/ActivityThread$NewIntentData;->token:Landroid/os/IBinder;

    .line 685
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x70

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 686
    return-void
.end method

.method public final schedulePauseActivity(Landroid/os/IBinder;ZZI)V
    .locals 3
    .parameter "token"
    .parameter "finished"
    .parameter "userLeaving"
    .parameter "configChanges"

    .prologue
    .line 607
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x66

    move v1, v0

    :goto_0
    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :goto_1
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v2, v1, p1, v0, p4}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 612
    return-void

    .line 607
    :cond_0
    const/16 v0, 0x65

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 9
    .parameter "intent"
    .parameter "info"
    .parameter "compatInfo"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "sync"
    .parameter "sendingUser"

    .prologue
    .line 697
    new-instance v0, Landroid/app/ActivityThread$ReceiverData;

    const/4 v6, 0x0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v1}, Landroid/app/ApplicationThreadNative;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    move-object v1, p1

    move v2, p4

    move-object v3, p5

    move-object v4, p6

    move/from16 v5, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    .line 699
    .local v0, r:Landroid/app/ActivityThread$ReceiverData;
    iput-object p2, v0, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 700
    iput-object p3, v0, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 701
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x71

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 702
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 0
    .parameter "receiver"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "dataStr"
    .parameter "extras"
    .parameter "ordered"
    .parameter "sticky"
    .parameter "sendingUser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 858
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 860
    return-void
.end method

.method public final scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    .locals 8
    .parameter "token"
    .parameter
    .parameter
    .parameter "configChanges"
    .parameter "notResumed"
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;IZ",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .prologue
    .line 676
    .local p2, pendingResults:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .local p3, pendingNewIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->requestRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Z)V

    .line 678
    return-void
.end method

.method public final scheduleResumeActivity(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "isForward"

    .prologue
    .line 632
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6b

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 633
    return-void

    .line 632
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    .locals 3
    .parameter "token"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ResultInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ActivityThread$ResultData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ResultData;-><init>()V

    .line 637
    .local v0, res:Landroid/app/ActivityThread$ResultData;
    iput-object p1, v0, Landroid/app/ActivityThread$ResultData;->token:Landroid/os/IBinder;

    .line 638
    iput-object p2, v0, Landroid/app/ActivityThread$ResultData;->results:Ljava/util/List;

    .line 639
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x6c

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 640
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "taskRemoved"
    .parameter "startId"
    .parameter "flags"
    .parameter "args"

    .prologue
    .line 756
    new-instance v0, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v0}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 757
    .local v0, s:Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v0, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 758
    iput-boolean p2, v0, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 759
    iput p3, v0, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 760
    iput p4, v0, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 761
    iput-object p5, v0, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 763
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x73

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 764
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 3
    .parameter "token"
    .parameter "sleeping"

    .prologue
    .line 628
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x89

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v1, v2, p1, v0}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 629
    return-void

    .line 628
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final scheduleStopActivity(Landroid/os/IBinder;ZI)V
    .locals 3
    .parameter "token"
    .parameter "showWindow"
    .parameter "configChanges"

    .prologue
    .line 616
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x67

    :goto_0
    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;II)V
    invoke-static {v1, v0, p1, v2, p3}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 619
    return-void

    .line 616
    :cond_0
    const/16 v0, 0x68

    goto :goto_0
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .parameter "token"

    .prologue
    .line 767
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 768
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .prologue
    .line 810
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 811
    return-void
.end method

.method public scheduleTrimMemory(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 1188
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8c

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;I)V
    invoke-static {v0, v1, v2, p1}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1189
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .parameter "token"
    .parameter "intent"

    .prologue
    .line 747
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 748
    .local v0, s:Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 749
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 751
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 752
    return-void
.end method

.method public final scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .parameter "token"
    .parameter "showWindow"

    .prologue
    .line 622
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    if-eqz p2, :cond_0

    const/16 v0, 0x69

    :goto_0
    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v0, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 625
    return-void

    .line 622
    :cond_0
    const/16 v0, 0x6a

    goto :goto_0
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .parameter "coreSettings"

    .prologue
    .line 1177
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1178
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "host"
    .parameter "port"
    .parameter "exclList"

    .prologue
    .line 832
    invoke-static {p1, p2, p3}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .parameter "group"

    .prologue
    .line 899
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setTrimMemoryFlagEx()V
    .locals 3

    .prologue
    .line 867
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8f

    const/4 v2, 0x0

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 868
    return-void
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 1169
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v0, v1, p1}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1170
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .parameter "pkg"
    .parameter "info"

    .prologue
    .line 1181
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1182
    .local v0, ucd:Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1183
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1184
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    #calls: Landroid/app/ActivityThread;->queueOrSendMessage(ILjava/lang/Object;)V
    invoke-static {v1, v2, v0}, Landroid/app/ActivityThread;->access$300(Landroid/app/ActivityThread;ILjava/lang/Object;)V

    .line 1185
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 824
    return-void
.end method
