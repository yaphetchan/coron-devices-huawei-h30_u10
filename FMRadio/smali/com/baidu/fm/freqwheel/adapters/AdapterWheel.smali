.class public Lcom/baidu/fm/freqwheel/adapters/AdapterWheel;
.super Lcom/baidu/fm/freqwheel/adapters/AbstractWheelTextAdapter;
.source "AdapterWheel.java"


# instance fields
.field private adapter:Lcom/baidu/fm/freqwheel/WheelAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/fm/freqwheel/WheelAdapter;)V
    .locals 0
    .parameter "context"
    .parameter "adapter"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/baidu/fm/freqwheel/adapters/AbstractWheelTextAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p2, p0, Lcom/baidu/fm/freqwheel/adapters/AdapterWheel;->adapter:Lcom/baidu/fm/freqwheel/WheelAdapter;

    .line 41
    return-void
.end method


# virtual methods
.method public getAdapter()Lcom/baidu/fm/freqwheel/WheelAdapter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/adapters/AdapterWheel;->adapter:Lcom/baidu/fm/freqwheel/WheelAdapter;

    return-object v0
.end method

.method protected getItemText(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "index"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/adapters/AdapterWheel;->adapter:Lcom/baidu/fm/freqwheel/WheelAdapter;

    invoke-interface {v0, p1}, Lcom/baidu/fm/freqwheel/WheelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemsCount()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/adapters/AdapterWheel;->adapter:Lcom/baidu/fm/freqwheel/WheelAdapter;

    invoke-interface {v0}, Lcom/baidu/fm/freqwheel/WheelAdapter;->getItemsCount()I

    move-result v0

    return v0
.end method
