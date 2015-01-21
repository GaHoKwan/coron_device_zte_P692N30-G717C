.class Lcom/android/music/WeekSelector$2;
.super Ljava/lang/Object;
.source "WeekSelector.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/WeekSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/WeekSelector;


# direct methods
.method constructor <init>(Lcom/android/music/WeekSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/music/WeekSelector$2;->this$0:Lcom/android/music/WeekSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 1
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/music/WeekSelector$2;->this$0:Lcom/android/music/WeekSelector;

    #getter for: Lcom/android/music/WeekSelector;->mNumberPicker:Landroid/widget/NumberPicker;
    invoke-static {v0}, Lcom/android/music/WeekSelector;->access$100(Lcom/android/music/WeekSelector;)Landroid/widget/NumberPicker;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/music/WeekSelector$2;->this$0:Lcom/android/music/WeekSelector;

    #setter for: Lcom/android/music/WeekSelector;->mCurrentSelectedPos:I
    invoke-static {v0, p3}, Lcom/android/music/WeekSelector;->access$002(Lcom/android/music/WeekSelector;I)I

    .line 166
    :cond_0
    return-void
.end method
