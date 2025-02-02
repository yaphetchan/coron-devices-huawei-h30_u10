.class Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingA2dp"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 1
    .parameter

    .prologue
    .line 709
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 710
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 709
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 715
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering OutgoingA2dp state with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    .line 717
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    const/16 v1, 0x34

    if-eq v0, v1, :cond_0

    .line 719
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: OutgoingA2DP state with command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    .line 722
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutgoingA2dp state processCommand return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-nez v0, :cond_1

    .line 724
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 725
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 728
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "message"

    .prologue
    const/4 v1, 0x1

    .line 732
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutgoingA2dp State->Processing Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2100(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 733
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 734
    .local v0, deferMsg:Landroid/os/Message;
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 814
    const/4 v1, 0x0

    .line 816
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 736
    :sswitch_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    .line 744
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v2, :cond_0

    .line 745
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 746
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 750
    :sswitch_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    .line 755
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v2, :cond_0

    .line 756
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 757
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 763
    :sswitch_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7600(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 769
    :sswitch_4
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 776
    :sswitch_5
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v2, :cond_0

    .line 777
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 778
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 782
    :sswitch_6
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$7900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 789
    :sswitch_7
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 792
    :sswitch_8
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8100(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    .line 793
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v2, :cond_0

    .line 794
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 795
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 799
    :sswitch_9
    iget-boolean v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mStatus:Z

    if-eqz v2, :cond_0

    .line 800
    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->mCommand:I

    iput v2, v0, Landroid/os/Message;->what:I

    .line 801
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 808
    :sswitch_a
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v2, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 811
    :sswitch_b
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v3

    #calls: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$8500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 734
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x32 -> :sswitch_4
        0x33 -> :sswitch_5
        0x34 -> :sswitch_6
        0x35 -> :sswitch_0
        0x36 -> :sswitch_7
        0x37 -> :sswitch_9
        0x38 -> :sswitch_a
        0x64 -> :sswitch_a
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x67 -> :sswitch_a
    .end sparse-switch
.end method
