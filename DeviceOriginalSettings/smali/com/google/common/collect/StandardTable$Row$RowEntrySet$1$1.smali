.class Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;
.super Lcom/google/common/collect/ForwardingMapEntry;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;->next()Ljava/util/Map$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ForwardingMapEntry",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$3:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;Ljava/util/Map$Entry;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 468
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;,"Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1.1;"
    iput-object p1, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->this$3:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1;

    iput-object p2, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    invoke-direct {p0}, Lcom/google/common/collect/ForwardingMapEntry;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 468
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;,"Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1.1;"
    invoke-virtual {p0}, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->delegate()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TC;TV;>;"
        }
    .end annotation

    .prologue
    .line 470
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;,"Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1.1;"
    iget-object v0, p0, Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;->val$entry:Ljava/util/Map$Entry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 478
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;,"Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1.1;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ForwardingMapEntry;->standardEquals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, this:Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1$1;,"Lcom/google/common/collect/StandardTable$Row$RowEntrySet$1.1;"
    .local p1, value:Ljava/lang/Object;,"TV;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/common/collect/ForwardingMapEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
