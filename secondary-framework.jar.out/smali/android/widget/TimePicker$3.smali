.class Landroid/widget/TimePicker$3;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TimePicker;


# direct methods
.method constructor <init>(Landroid/widget/TimePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 7
    .parameter "spinner"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 183
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsHwTheme:Z
    invoke-static {v5}, Landroid/widget/TimePicker;->access$400(Landroid/widget/TimePicker;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->updateInputState()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)V

    .line 185
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)V

    .line 207
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->updateInputState()V
    invoke-static {v5}, Landroid/widget/TimePicker;->access$000(Landroid/widget/TimePicker;)V

    .line 188
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v1

    .line 189
    .local v1, minValue:I
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mMinuteSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$500(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v0

    .line 190
    .local v0, maxValue:I
    if-ne p2, v0, :cond_4

    if-ne p3, v1, :cond_4

    .line 191
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 192
    .local v2, newHour:I
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0xc

    if-ne v2, v5, :cond_1

    .line 193
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    iget-object v6, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)Z

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    #setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/TimePicker;->access$102(Landroid/widget/TimePicker;Z)Z

    .line 194
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    .line 196
    :cond_1
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 205
    .end local v2           #newHour:I
    :cond_2
    :goto_2
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->onTimeChanged()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$300(Landroid/widget/TimePicker;)V

    goto :goto_0

    .restart local v2       #newHour:I
    :cond_3
    move v3, v4

    .line 193
    goto :goto_1

    .line 197
    .end local v2           #newHour:I
    :cond_4
    if-ne p2, v1, :cond_2

    if-ne p3, v0, :cond_2

    .line 198
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v5}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 199
    .restart local v2       #newHour:I
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    invoke-virtual {v5}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_5

    const/16 v5, 0xb

    if-ne v2, v5, :cond_5

    .line 200
    iget-object v5, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    iget-object v6, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/TimePicker;->access$100(Landroid/widget/TimePicker;)Z

    move-result v6

    if-nez v6, :cond_6

    :goto_3
    #setter for: Landroid/widget/TimePicker;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/TimePicker;->access$102(Landroid/widget/TimePicker;Z)Z

    .line 201
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #calls: Landroid/widget/TimePicker;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/TimePicker;->access$200(Landroid/widget/TimePicker;)V

    .line 203
    :cond_5
    iget-object v3, p0, Landroid/widget/TimePicker$3;->this$0:Landroid/widget/TimePicker;

    #getter for: Landroid/widget/TimePicker;->mHourSpinner:Landroid/widget/NumberPicker;
    invoke-static {v3}, Landroid/widget/TimePicker;->access$600(Landroid/widget/TimePicker;)Landroid/widget/NumberPicker;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    goto :goto_2

    :cond_6
    move v3, v4

    .line 200
    goto :goto_3
.end method
