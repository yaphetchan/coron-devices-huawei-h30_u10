.class Lcom/baidu/fm/StationListShow$2;
.super Ljava/lang/Object;
.source "StationListShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/fm/StationListShow;->initTitlebar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/fm/StationListShow;


# direct methods
.method constructor <init>(Lcom/baidu/fm/StationListShow;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/baidu/fm/StationListShow$2;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/baidu/fm/StationListShow$2;->this$0:Lcom/baidu/fm/StationListShow;

    invoke-virtual {v0}, Lcom/baidu/fm/StationListShow;->finish()V

    .line 324
    return-void
.end method
