.class final Lcom/android/server/wm/WindowManagerService$H;
.super Landroid/os/Handler;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final ADD_STARTING:I = 0x5

.field public static final ANIMATOR_WHAT_OFFSET:I = 0x186a0

.field public static final APP_FREEZE_TIMEOUT:I = 0x11

.field public static final APP_TRANSITION_TIMEOUT:I = 0xd

.field public static final BOOT_TIMEOUT:I = 0x17

.field public static final CLEAR_PENDING_ACTIONS:I = 0x186a2

.field public static final CLIENT_FREEZE_TIMEOUT:I = 0x23

.field public static final DO_ANIMATION_CALLBACK:I = 0x1b

.field public static final DO_DISPLAY_ADDED:I = 0x20

.field public static final DO_DISPLAY_CHANGED:I = 0x22

.field public static final DO_DISPLAY_REMOVED:I = 0x21

.field public static final DO_TRAVERSAL:I = 0x4

.field public static final DRAG_END_TIMEOUT:I = 0x15

.field public static final DRAG_START_TIMEOUT:I = 0x14

.field public static final ENABLE_SCREEN:I = 0x10

.field public static final FINISHED_STARTING:I = 0x7

.field public static final FORCE_GC:I = 0xf

.field public static final NOTIFY_RECTANGLE_ON_SCREEN_REQUESTED:I = 0x1e

.field public static final NOTIFY_ROTATION_CHANGED:I = 0x1c

.field public static final NOTIFY_WINDOW_LAYERS_CHANGED:I = 0x1f

.field public static final NOTIFY_WINDOW_TRANSITION:I = 0x1d

.field public static final PERSIST_ANIMATION_SCALE:I = 0xe

.field public static final REMOVE_STARTING:I = 0x6

.field public static final REPORT_APPLICATION_TOKEN_DRAWN:I = 0x9

.field public static final REPORT_APPLICATION_TOKEN_WINDOWS:I = 0x8

.field public static final REPORT_FOCUS_CHANGE:I = 0x2

.field public static final REPORT_HARD_KEYBOARD_STATUS_CHANGE:I = 0x16

.field public static final REPORT_LOSING_FOCUS:I = 0x3

.field public static final REPORT_WINDOWS_CHANGE:I = 0x13

.field public static final SEND_NEW_CONFIGURATION:I = 0x12

.field public static final SET_TRANSPARENT_REGION:I = 0x186a1

.field public static final SHOW_STRICT_MODE_VIOLATION:I = 0x1a

.field public static final UPDATE_ANIM_PARAMETERS:I = 0x19

.field public static final UPDATE_IPO_ROTATION:I = 0x24

.field public static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x18

.field public static final WINDOW_FREEZE_TIMEOUT:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 8008
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8009
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 38
    .parameter "msg"

    .prologue
    .line 8013
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v2, :cond_0

    .line 8014
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: entry what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8016
    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 8541
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v2, :cond_2

    .line 8542
    const-string v2, "WindowManager"

    const-string v3, "handleMessage: exit"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8544
    :cond_2
    :goto_1
    return-void

    .line 8021
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8022
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v19, v0

    .line 8023
    .local v19, lastFocus:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v21, v0

    .line 8024
    .local v21, newFocus:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_3

    .line 8026
    monitor-exit v3

    goto :goto_1

    .line 8042
    .end local v19           #lastFocus:Lcom/android/server/wm/WindowState;
    .end local v21           #newFocus:Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 8028
    .restart local v19       #lastFocus:Lcom/android/server/wm/WindowState;
    .restart local v21       #newFocus:Lcom/android/server/wm/WindowState;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v21

    iput-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    .line 8029
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS:Z

    if-eqz v2, :cond_4

    .line 8030
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Focus moving from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8034
    :cond_4
    if-eqz v21, :cond_6

    if-eqz v19, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v2

    if-nez v2, :cond_6

    .line 8036
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS:Z

    if-eqz v2, :cond_5

    .line 8037
    const-string v2, "WindowManager"

    const-string v4, "Delaying loss of focus..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8039
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8040
    const/16 v19, 0x0

    .line 8042
    :cond_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8044
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 8045
    if-eqz v21, :cond_7

    .line 8048
    :try_start_2
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gaining focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8049
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v2, v3, v4}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_c

    .line 8053
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyFocusChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$400(Lcom/android/server/wm/WindowManagerService;)V

    .line 8056
    :cond_7
    if-eqz v19, :cond_1

    .line 8059
    :try_start_3
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Losing focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8060
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v2, v3, v4}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 8061
    :catch_0
    move-exception v2

    goto/16 :goto_0

    .line 8071
    .end local v19           #lastFocus:Lcom/android/server/wm/WindowState;
    .end local v21           #newFocus:Lcom/android/server/wm/WindowState;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8072
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 8073
    .local v20, losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    .line 8074
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 8076
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 8077
    .local v11, N:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v11, :cond_1

    .line 8080
    :try_start_5
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    invoke-interface {v2, v3, v4}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_b

    .line 8077
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 8074
    .end local v11           #N:I
    .end local v16           #i:I
    .end local v20           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    .line 8088
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8089
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mTraversalScheduled:Z

    .line 8090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 8091
    monitor-exit v3

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v2

    .line 8095
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/wm/AppWindowToken;

    .line 8096
    .local v37, wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    move-object/from16 v28, v0

    .line 8098
    .local v28, sd:Lcom/android/server/wm/StartingData;
    if-eqz v28, :cond_2

    .line 8103
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_8

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8106
    :cond_8
    const-wide/16 v2, 0x20

    const-string v4, "wmAddStarting"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8107
    const/16 v32, 0x0

    .line 8109
    .local v32, view:Landroid/view/View;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/android/server/wm/StartingData;->pkg:Ljava/lang/String;

    move-object/from16 v0, v28

    iget v5, v0, Lcom/android/server/wm/StartingData;->theme:I

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/server/wm/StartingData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v0, v28

    iget-object v7, v0, Lcom/android/server/wm/StartingData;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, v28

    iget v8, v0, Lcom/android/server/wm/StartingData;->labelRes:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/android/server/wm/StartingData;->icon:I

    move-object/from16 v0, v28

    iget v10, v0, Lcom/android/server/wm/StartingData;->windowFlags:I

    invoke-interface/range {v2 .. v10}, Landroid/view/WindowManagerPolicy;->addStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;III)Landroid/view/View;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v32

    .line 8115
    :goto_5
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 8117
    if-eqz v32, :cond_1

    .line 8118
    const/4 v12, 0x0

    .line 8120
    .local v12, abort:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8121
    :try_start_9
    move-object/from16 v0, v37

    iget-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v2, :cond_9

    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    if-nez v2, :cond_d

    .line 8124
    :cond_9
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_b

    .line 8125
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_a

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Aborted starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": removed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-boolean v5, v0, Lcom/android/server/wm/AppWindowToken;->removed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingData="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8129
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8130
    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8131
    const/4 v12, 0x1

    .line 8136
    :cond_b
    :goto_6
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_c

    if-nez v12, :cond_c

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8141
    :cond_c
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 8143
    if-eqz v12, :cond_1

    .line 8144
    const-wide/16 v2, 0x20

    const-string v4, "wmAbortStarting"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8146
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v0, v32

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 8150
    :goto_7
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 8112
    .end local v12           #abort:Z
    :catch_1
    move-exception v15

    .line 8113
    .local v15, e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when adding starting window"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 8134
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v12       #abort:Z
    :cond_d
    :try_start_b
    move-object/from16 v0, v32

    move-object/from16 v1, v37

    iput-object v0, v1, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    goto :goto_6

    .line 8141
    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v2

    .line 8147
    :catch_2
    move-exception v15

    .line 8148
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 8156
    .end local v12           #abort:Z
    .end local v15           #e:Ljava/lang/Exception;
    .end local v28           #sd:Lcom/android/server/wm/StartingData;
    .end local v32           #view:Landroid/view/View;
    .end local v37           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/wm/AppWindowToken;

    .line 8157
    .restart local v37       #wtoken:Lcom/android/server/wm/AppWindowToken;
    const/16 v30, 0x0

    .line 8158
    .local v30, token:Landroid/os/IBinder;
    const/16 v32, 0x0

    .line 8159
    .restart local v32       #view:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8160
    :try_start_c
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_e

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8164
    :cond_e
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_f

    .line 8165
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v32, v0

    .line 8166
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v30, v0

    .line 8167
    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8168
    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8169
    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8170
    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 8172
    :cond_f
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 8173
    if-eqz v32, :cond_1

    .line 8174
    const-wide/16 v2, 0x20

    const-string v4, "wmRemoveStarting"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8176
    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3

    .line 8180
    :goto_8
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_0

    .line 8172
    :catchall_4
    move-exception v2

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v2

    .line 8177
    :catch_3
    move-exception v15

    .line 8178
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 8185
    .end local v15           #e:Ljava/lang/Exception;
    .end local v30           #token:Landroid/os/IBinder;
    .end local v32           #view:Landroid/view/View;
    .end local v37           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_5
    const/16 v30, 0x0

    .line 8186
    .restart local v30       #token:Landroid/os/IBinder;
    const/16 v32, 0x0

    .line 8188
    .restart local v32       #view:Landroid/view/View;
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8189
    :try_start_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 8190
    .restart local v11       #N:I
    if-gtz v11, :cond_10

    .line 8191
    monitor-exit v3

    goto/16 :goto_0

    .line 8210
    .end local v11           #N:I
    :catchall_5
    move-exception v2

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    throw v2

    .line 8193
    .restart local v11       #N:I
    :cond_10
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFinishedStarting:Ljava/util/ArrayList;

    add-int/lit8 v4, v11, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/wm/AppWindowToken;

    .line 8195
    .restart local v37       #wtoken:Lcom/android/server/wm/AppWindowToken;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_STARTING_WINDOW:Z

    if-eqz v2, :cond_11

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": startingWindow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " startingView="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v37

    iget-object v5, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8200
    :cond_11
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_12

    .line 8201
    monitor-exit v3

    goto :goto_9

    .line 8204
    :cond_12
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    move-object/from16 v32, v0

    .line 8205
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object/from16 v30, v0

    .line 8206
    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingData:Lcom/android/server/wm/StartingData;

    .line 8207
    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingView:Landroid/view/View;

    .line 8208
    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput-object v2, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    .line 8209
    const/4 v2, 0x0

    move-object/from16 v0, v37

    iput-boolean v2, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    .line 8210
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 8212
    const-wide/16 v2, 0x20

    const-string v4, "wmFinishStarting"

    invoke-static {v2, v3, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 8214
    :try_start_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManagerPolicy;->removeStartingWindow(Landroid/os/IBinder;Landroid/view/View;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 8218
    :goto_a
    const-wide/16 v2, 0x20

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_9

    .line 8215
    :catch_4
    move-exception v15

    .line 8216
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "Exception when removing starting window"

    invoke-static {v2, v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 8223
    .end local v11           #N:I
    .end local v15           #e:Ljava/lang/Exception;
    .end local v30           #token:Landroid/os/IBinder;
    .end local v32           #view:Landroid/view/View;
    .end local v37           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/wm/AppWindowToken;

    .line 8226
    .restart local v37       #wtoken:Lcom/android/server/wm/AppWindowToken;
    :try_start_12
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_13

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting drawn in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8228
    :cond_13
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsDrawn()V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_0

    .line 8229
    :catch_5
    move-exception v2

    goto/16 :goto_0

    .line 8234
    .end local v37           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/server/wm/AppWindowToken;

    .line 8236
    .restart local v37       #wtoken:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_15

    const/16 v23, 0x1

    .line 8237
    .local v23, nowVisible:Z
    :goto_b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_16

    const/16 v22, 0x1

    .line 8240
    .local v22, nowGone:Z
    :goto_c
    :try_start_13
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_14

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting visible in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " gone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8244
    :cond_14
    if-eqz v23, :cond_17

    .line 8245
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsVisible()V

    goto/16 :goto_0

    .line 8249
    :catch_6
    move-exception v2

    goto/16 :goto_0

    .line 8236
    .end local v22           #nowGone:Z
    .end local v23           #nowVisible:Z
    :cond_15
    const/16 v23, 0x0

    goto :goto_b

    .line 8237
    .restart local v23       #nowVisible:Z
    :cond_16
    const/16 v22, 0x0

    goto :goto_c

    .line 8247
    .restart local v22       #nowGone:Z
    :cond_17
    move-object/from16 v0, v37

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v2}, Landroid/view/IApplicationToken;->windowsGone()V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_0

    .line 8255
    .end local v22           #nowGone:Z
    .end local v23           #nowVisible:Z
    .end local v37           #wtoken:Lcom/android/server/wm/AppWindowToken;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8256
    :try_start_14
    const-string v2, "WindowManager"

    const-string v4, "Window freeze timeout expired."

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8257
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozenTimeout:Z

    .line 8258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultWindowListLocked()Lcom/android/server/wm/WindowList;

    move-result-object v36

    .line 8259
    .local v36, windows:Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowList;->size()I

    move-result v16

    .line 8260
    .restart local v16       #i:I
    :cond_18
    :goto_d
    if-lez v16, :cond_19

    .line 8261
    add-int/lit8 v16, v16, -0x1

    .line 8262
    move-object/from16 v0, v36

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/wm/WindowState;

    .line 8263
    .local v33, w:Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v33

    iget-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-eqz v2, :cond_18

    .line 8264
    const/4 v2, 0x0

    move-object/from16 v0, v33

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 8265
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force clearing orientation change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 8269
    .end local v16           #i:I
    .end local v33           #w:Lcom/android/server/wm/WindowState;
    .end local v36           #windows:Lcom/android/server/wm/WindowList;
    :catchall_6
    move-exception v2

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    throw v2

    .line 8268
    .restart local v16       #i:I
    .restart local v36       #windows:Lcom/android/server/wm/WindowList;
    :cond_19
    :try_start_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 8269
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto/16 :goto_0

    .line 8276
    .end local v16           #i:I
    .end local v36           #windows:Lcom/android/server/wm/WindowList;
    :sswitch_9
    :try_start_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->notifyWindowTimeout()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_7

    .line 8281
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8282
    :try_start_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mNextAppTransition:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1a

    .line 8284
    const-string v2, "WindowManager"

    const-string v4, "*** APP TRANSITION TIMEOUT"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransitionReady:Z

    .line 8286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransitionTimeout:Z

    .line 8287
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 8288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimatingAppTokens:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 8289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 8291
    :cond_1a
    monitor-exit v3

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v3
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    throw v2

    .line 8277
    :catch_7
    move-exception v15

    .line 8278
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "error happens when notify AMS to dump log"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 8296
    .end local v15           #e:Ljava/lang/Exception;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "window_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mWindowAnimationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "transition_animation_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransitionAnimationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    .line 8300
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mAnimatorDurationScale:F

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_0

    .line 8306
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8307
    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    monitor-enter v4
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 8310
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowAnimator;->mAnimating:Z

    if-nez v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLayoutToAnim:Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService$LayoutToAnimatorParams;->mAnimationScheduled:Z

    if-eqz v2, :cond_1c

    .line 8313
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v2, v5, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 8315
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_9

    :try_start_1a
    monitor-exit v3

    goto/16 :goto_1

    .line 8323
    :catchall_8
    move-exception v2

    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    throw v2

    .line 8319
    :cond_1c
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v2, :cond_1d

    .line 8320
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    :try_start_1c
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    goto/16 :goto_1

    .line 8322
    :cond_1d
    :try_start_1d
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 8323
    :try_start_1e
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    .line 8324
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->gc()V

    goto/16 :goto_0

    .line 8322
    :catchall_9
    move-exception v2

    :try_start_1f
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :try_start_20
    throw v2
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 8329
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performEnableScreen()V

    goto/16 :goto_0

    .line 8336
    :sswitch_d
    :try_start_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->notifyWindowTimeout()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_8

    .line 8341
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8342
    :try_start_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    monitor-enter v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 8343
    :try_start_23
    const-string v2, "WindowManager"

    const-string v5, "App freeze timeout expired."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8344
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 8347
    .restart local v16       #i:I
    if-nez v16, :cond_1e

    .line 8348
    const-string v2, "WindowManager"

    const-string v5, "Size of mAppTokens is 0"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8349
    :cond_1e
    :goto_10
    if-lez v16, :cond_20

    .line 8350
    add-int/lit8 v16, v16, -0x1

    .line 8351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTokens:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/wm/AppWindowToken;

    .line 8352
    .local v29, tok:Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v29

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v2, :cond_1f

    .line 8353
    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force clearing freeze: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8354
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v2, v0, v5, v6}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    goto :goto_10

    .line 8360
    .end local v16           #i:I
    .end local v29           #tok:Lcom/android/server/wm/AppWindowToken;
    :catchall_a
    move-exception v2

    monitor-exit v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    :try_start_24
    throw v2

    .line 8361
    :catchall_b
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    throw v2

    .line 8337
    :catch_8
    move-exception v15

    .line 8338
    .restart local v15       #e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    const-string v3, "error happens when notify AMS to dump log"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 8357
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v16       #i:I
    .restart local v29       #tok:Lcom/android/server/wm/AppWindowToken;
    :cond_1f
    :try_start_25
    const-string v2, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is not freezing screen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 8360
    .end local v29           #tok:Lcom/android/server/wm/AppWindowToken;
    :cond_20
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    .line 8361
    :try_start_26
    monitor-exit v3
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    goto/16 :goto_0

    .line 8366
    .end local v16           #i:I
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8367
    :try_start_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    if-eqz v2, :cond_21

    .line 8368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mClientFreezingScreen:Z

    .line 8369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$600(Lcom/android/server/wm/WindowManagerService;)V

    .line 8371
    :cond_21
    monitor-exit v3

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_c

    throw v2

    .line 8376
    :sswitch_f
    const/16 v2, 0x12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 8377
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->sendNewConfiguration()V

    goto/16 :goto_0

    .line 8382
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #getter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$700(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8384
    :try_start_28
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    #setter for: Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$702(Lcom/android/server/wm/WindowManagerService;Z)Z

    .line 8385
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    .line 8386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->notifyWindowsChanged()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$800(Lcom/android/server/wm/WindowManagerService;)V

    goto/16 :goto_0

    .line 8385
    :catchall_d
    move-exception v2

    :try_start_29
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    throw v2

    .line 8392
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/IBinder;

    .line 8393
    .local v34, win:Landroid/os/IBinder;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v2, :cond_22

    .line 8394
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout starting drag by win "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8396
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8398
    :try_start_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_23

    .line 8399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->unregister()V

    .line 8400
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 8401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->reset()V

    .line 8402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    .line 8404
    :cond_23
    monitor-exit v3

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    throw v2

    .line 8409
    .end local v34           #win:Landroid/os/IBinder;
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/os/IBinder;

    .line 8410
    .restart local v34       #win:Landroid/os/IBinder;
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_DRAG:Z

    if-eqz v2, :cond_24

    .line 8411
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout ending drag to win "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8413
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8415
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    if-eqz v2, :cond_25

    .line 8416
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/DragState;->mDragResult:Z

    .line 8417
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDragState:Lcom/android/server/wm/DragState;

    invoke-virtual {v2}, Lcom/android/server/wm/DragState;->endDragLw()V

    .line 8419
    :cond_25
    monitor-exit v3

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v3
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_f

    throw v2

    .line 8424
    .end local v34           #win:Landroid/os/IBinder;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->notifyHardKeyboardStatusChange()V

    goto/16 :goto_0

    .line 8429
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->performBootTimeout()V

    goto/16 :goto_0

    .line 8435
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8436
    :try_start_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/util/Pair;

    .line 8437
    .local v24, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Timeout waiting for drawn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    .line 8439
    monitor-exit v3

    goto/16 :goto_1

    .line 8441
    .end local v24           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :catchall_10
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_10

    throw v2

    .restart local v24       #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :cond_26
    :try_start_2d
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_10

    .line 8443
    :try_start_2e
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_9

    goto/16 :goto_0

    .line 8444
    :catch_9
    move-exception v2

    goto/16 :goto_0

    .line 8451
    .end local v24           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowState;Landroid/os/IRemoteCallback;>;"
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8452
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$900(Lcom/android/server/wm/WindowManagerService;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 8453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const v4, 0x186a2

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    .line 8454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->performLayoutAndPlaceSurfacesLocked()V
    invoke-static {v2}, Lcom/android/server/wm/WindowManagerService;->access$500(Lcom/android/server/wm/WindowManagerService;)V

    .line 8456
    :cond_27
    monitor-exit v3

    goto/16 :goto_0

    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_11

    throw v2

    .line 8461
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/wm/WindowManagerService;->showStrictModeViolation(II)V
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->access$1000(Lcom/android/server/wm/WindowManagerService;II)V

    goto/16 :goto_0

    .line 8467
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/util/Pair;

    .line 8469
    .local v25, pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Region;>;"
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/server/wm/WindowStateAnimator;

    .line 8470
    .local v35, winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, v25

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Region;

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowStateAnimator;->setTransparentRegionHint(Landroid/graphics/Region;)V

    goto/16 :goto_0

    .line 8475
    .end local v25           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Lcom/android/server/wm/WindowStateAnimator;Landroid/graphics/Region;>;"
    .end local v35           #winAnimator:Lcom/android/server/wm/WindowStateAnimator;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowAnimator;->clearPendingActions()V

    goto/16 :goto_0

    .line 8481
    :sswitch_1a
    :try_start_30
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/IRemoteCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_30} :catch_a

    goto/16 :goto_0

    .line 8482
    :catch_a
    move-exception v2

    goto/16 :goto_0

    .line 8488
    :sswitch_1b
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 8489
    .local v14, displayId:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    .line 8490
    .local v27, rotation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v27

    #calls: Lcom/android/server/wm/WindowManagerService;->handleNotifyRotationChanged(II)V
    invoke-static {v2, v14, v0}, Lcom/android/server/wm/WindowManagerService;->access$1100(Lcom/android/server/wm/WindowManagerService;II)V

    goto/16 :goto_0

    .line 8495
    .end local v14           #displayId:I
    .end local v27           #rotation:I
    :sswitch_1c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    .line 8496
    .local v31, transition:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/WindowInfo;

    .line 8497
    .local v18, info:Landroid/view/WindowInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, v31

    move-object/from16 v1, v18

    #calls: Lcom/android/server/wm/WindowManagerService;->handleNotifyWindowTranstion(ILandroid/view/WindowInfo;)V
    invoke-static {v2, v0, v1}, Lcom/android/server/wm/WindowManagerService;->access$1200(Lcom/android/server/wm/WindowManagerService;ILandroid/view/WindowInfo;)V

    goto/16 :goto_0

    .line 8502
    .end local v18           #info:Landroid/view/WindowInfo;
    .end local v31           #transition:I
    :sswitch_1d
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg1:I

    .line 8503
    .restart local v14       #displayId:I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_28

    const/16 v17, 0x1

    .line 8504
    .local v17, immediate:Z
    :goto_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/graphics/Rect;

    .line 8505
    .local v26, rectangle:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, v26

    move/from16 v1, v17

    #calls: Lcom/android/server/wm/WindowManagerService;->handleNotifyRectangleOnScreenRequested(ILandroid/graphics/Rect;Z)V
    invoke-static {v2, v14, v0, v1}, Lcom/android/server/wm/WindowManagerService;->access$1300(Lcom/android/server/wm/WindowManagerService;ILandroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 8503
    .end local v17           #immediate:Z
    .end local v26           #rectangle:Landroid/graphics/Rect;
    :cond_28
    const/16 v17, 0x0

    goto :goto_11

    .line 8510
    .end local v14           #displayId:I
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/wm/DisplayContent;

    .line 8511
    .local v13, displayContent:Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    #calls: Lcom/android/server/wm/WindowManagerService;->handleNotifyWindowLayersChanged(Lcom/android/server/wm/DisplayContent;)V
    invoke-static {v2, v13}, Lcom/android/server/wm/WindowManagerService;->access$1400(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    goto/16 :goto_0

    .line 8516
    .end local v13           #displayContent:Lcom/android/server/wm/DisplayContent;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8517
    :try_start_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/wm/WindowManagerService;->handleDisplayAddedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1500(Lcom/android/server/wm/WindowManagerService;I)V

    .line 8518
    monitor-exit v3

    goto/16 :goto_0

    :catchall_12
    move-exception v2

    monitor-exit v3
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_12

    throw v2

    .line 8522
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8523
    :try_start_32
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/wm/WindowManagerService;->handleDisplayRemovedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1600(Lcom/android/server/wm/WindowManagerService;I)V

    .line 8524
    monitor-exit v3

    goto/16 :goto_0

    :catchall_13
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_13

    throw v2

    .line 8528
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 8529
    :try_start_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/wm/WindowManagerService;->handleDisplayChangedLocked(I)V
    invoke-static {v2, v4}, Lcom/android/server/wm/WindowManagerService;->access$1700(Lcom/android/server/wm/WindowManagerService;I)V

    .line 8530
    monitor-exit v3

    goto/16 :goto_0

    :catchall_14
    move-exception v2

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_14

    throw v2

    .line 8535
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/wm/WindowManagerService;->mIsUpdateIpoRotation:Z

    .line 8536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService$H;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    goto/16 :goto_0

    .line 8081
    .restart local v11       #N:I
    .restart local v16       #i:I
    .restart local v20       #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    :catch_b
    move-exception v2

    goto/16 :goto_4

    .line 8050
    .end local v11           #N:I
    .end local v16           #i:I
    .end local v20           #losers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .restart local v19       #lastFocus:Lcom/android/server/wm/WindowState;
    .restart local v21       #newFocus:Lcom/android/server/wm/WindowState;
    :catch_c
    move-exception v2

    goto/16 :goto_2

    .line 8016
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xb -> :sswitch_8
        0xd -> :sswitch_9
        0xe -> :sswitch_a
        0xf -> :sswitch_b
        0x10 -> :sswitch_c
        0x11 -> :sswitch_d
        0x12 -> :sswitch_f
        0x13 -> :sswitch_10
        0x14 -> :sswitch_11
        0x15 -> :sswitch_12
        0x16 -> :sswitch_13
        0x17 -> :sswitch_14
        0x18 -> :sswitch_15
        0x19 -> :sswitch_16
        0x1a -> :sswitch_17
        0x1b -> :sswitch_1a
        0x1c -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_e
        0x24 -> :sswitch_22
        0x186a1 -> :sswitch_18
        0x186a2 -> :sswitch_19
    .end sparse-switch
.end method
