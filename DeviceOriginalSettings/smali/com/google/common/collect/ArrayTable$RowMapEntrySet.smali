.class Lcom/google/common/collect/ArrayTable$RowMapEntrySet;
.super Ljava/util/AbstractSet;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RowMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TR;",
        "Ljava/util/Map",
        "<TC;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lcom/google/common/collect/ArrayTable;)V
    .locals 0
    .parameter

    .prologue
    .line 789
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMapEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMapEntrySet;"
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$RowMapEntrySet;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/common/collect/ArrayTable;Lcom/google/common/collect/ArrayTable$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 789
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMapEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMapEntrySet;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ArrayTable$RowMapEntrySet;-><init>(Lcom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;>;"
        }
    .end annotation

    .prologue
    .line 791
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMapEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMapEntrySet;"
    new-instance v0, Lcom/google/common/collect/ArrayTable$RowMapEntrySet$1;

    invoke-virtual {p0}, Lcom/google/common/collect/ArrayTable$RowMapEntrySet;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/ArrayTable$RowMapEntrySet$1;-><init>(Lcom/google/common/collect/ArrayTable$RowMapEntrySet;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 800
    .local p0, this:Lcom/google/common/collect/ArrayTable$RowMapEntrySet;,"Lcom/google/common/collect/ArrayTable<TR;TC;TV;>.RowMapEntrySet;"
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$RowMapEntrySet;->this$0:Lcom/google/common/collect/ArrayTable;

    #getter for: Lcom/google/common/collect/ArrayTable;->rowList:Lcom/google/common/collect/ImmutableList;
    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v0

    return v0
.end method
