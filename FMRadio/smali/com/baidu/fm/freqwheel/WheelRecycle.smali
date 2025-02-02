.class public Lcom/baidu/fm/freqwheel/WheelRecycle;
.super Ljava/lang/Object;
.source "WheelRecycle.java"


# instance fields
.field private emptyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private wheel:Lcom/baidu/fm/freqwheel/WheelView;


# direct methods
.method public constructor <init>(Lcom/baidu/fm/freqwheel/WheelView;)V
    .locals 0
    .parameter "wheel"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->wheel:Lcom/baidu/fm/freqwheel/WheelView;

    .line 47
    return-void
.end method

.method private addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, cache:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    if-nez p2, :cond_0

    .line 112
    new-instance p2, Ljava/util/LinkedList;

    .end local p2           #cache:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 115
    .restart local p2       #cache:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-object p2
.end method

.method private getCachedView(Ljava/util/List;)Landroid/view/View;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, cache:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 145
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 146
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 147
    .local v0, view:Landroid/view/View;
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 150
    .end local v0           #view:Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleView(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "index"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->wheel:Lcom/baidu/fm/freqwheel/WheelView;

    invoke-virtual {v1}, Lcom/baidu/fm/freqwheel/WheelView;->getViewAdapter()Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/baidu/fm/freqwheel/adapters/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 127
    .local v0, count:I
    if-ltz p2, :cond_0

    if-lt p2, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->wheel:Lcom/baidu/fm/freqwheel/WheelView;

    invoke-virtual {v1}, Lcom/baidu/fm/freqwheel/WheelView;->isCyclic()Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/baidu/fm/freqwheel/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->emptyItems:Ljava/util/List;

    .line 137
    :goto_0
    return-void

    .line 131
    :cond_1
    :goto_1
    if-gez p2, :cond_2

    .line 132
    add-int/2addr p2, v0

    goto :goto_1

    .line 134
    :cond_2
    rem-int/2addr p2, v0

    .line 135
    iget-object v1, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->items:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/baidu/fm/freqwheel/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->items:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->items:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->emptyItems:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    :cond_1
    return-void
.end method

.method public getEmptyItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/fm/freqwheel/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/View;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/baidu/fm/freqwheel/WheelRecycle;->items:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/baidu/fm/freqwheel/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public recycleItems(Landroid/widget/LinearLayout;ILcom/baidu/fm/freqwheel/ItemsRange;)I
    .locals 3
    .parameter "layout"
    .parameter "firstItem"
    .parameter "range"

    .prologue
    .line 60
    move v1, p2

    .line 61
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 62
    invoke-virtual {p3, v1}, Lcom/baidu/fm/freqwheel/ItemsRange;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/baidu/fm/freqwheel/WheelRecycle;->recycleView(Landroid/view/View;I)V

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 65
    if-nez v0, :cond_0

    .line 66
    add-int/lit8 p2, p2, 0x1

    .line 71
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_2
    return p2
.end method
