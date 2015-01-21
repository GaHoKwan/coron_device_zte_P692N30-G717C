.class Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;
.super Ljava/lang/Object;
.source "MTKRecipientEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/chips/MTKRecipientEditTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "watcherProcessor"
.end annotation


# instance fields
.field private mSpanFlags:[I

.field private mSpanWatchers:[Landroid/text/SpanWatcher;

.field private mSpanWatchersNum:I

.field final synthetic this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;


# direct methods
.method public constructor <init>(Lcom/android/ex/chips/MTKRecipientEditTextView;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4018
    iput-object p1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4019
    const-string v0, "RecipientEditTextView"

    const-string v1, "[watcherProcessor] constructor"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {p1, v0, v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4020
    iput-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    .line 4021
    iput-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanFlags:[I

    .line 4022
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchersNum:I

    .line 4023
    return-void
.end method


# virtual methods
.method public addSpanWatchers()V
    .locals 6

    .prologue
    .line 4045
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "RecipientEditTextView"

    const-string v3, "[watcherProcessor.addSpanWatchers]"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4046
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchersNum:I

    if-ge v0, v1, :cond_1

    .line 4047
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    aget-object v1, v1, v0

    instance-of v1, v1, Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    .line 4048
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "MTKRecip"

    const-string v3, "[WatchProcessor.addSpan] setSpan"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printThreadingDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$2600(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4049
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanFlags:[I

    aget v5, v5, v0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4050
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "addSpanWatchers, add - "

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    aget-object v3, v3, v0

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->tempLogPrint(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3800(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4046
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4053
    :cond_1
    return-void
.end method

.method public initWatcherProcessor()V
    .locals 4

    .prologue
    .line 4026
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v1, "RecipientEditTextView"

    const-string v2, "[watcherProcessor.initWatcherProcessor]"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4027
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v0}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Landroid/text/SpanWatcher;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/SpanWatcher;

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    .line 4028
    iget-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    array-length v0, v0

    iput v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchersNum:I

    .line 4029
    iget v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchersNum:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanFlags:[I

    .line 4030
    return-void
.end method

.method public removeSpanWatchers()V
    .locals 4

    .prologue
    .line 4033
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "RecipientEditTextView"

    const-string v3, "[watcherProcessor.removeSpanWatchers]"

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$1400(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 4034
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchersNum:I

    if-ge v0, v1, :cond_1

    .line 4035
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "removeSpanWatchers"

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    aget-object v3, v3, v0

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->tempLogPrint(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3800(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4036
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanFlags:[I

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    aput v2, v1, v0

    .line 4037
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    aget-object v1, v1, v0

    instance-of v1, v1, Landroid/text/TextWatcher;

    if-eqz v1, :cond_0

    .line 4038
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    const-string v2, "removeSpanWatchers, remove - "

    iget-object v3, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    aget-object v3, v3, v0

    #calls: Lcom/android/ex/chips/MTKRecipientEditTextView;->tempLogPrint(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v1, v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->access$3800(Lcom/android/ex/chips/MTKRecipientEditTextView;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4039
    iget-object v1, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->this$0:Lcom/android/ex/chips/MTKRecipientEditTextView;

    invoke-virtual {v1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/ex/chips/MTKRecipientEditTextView$watcherProcessor;->mSpanWatchers:[Landroid/text/SpanWatcher;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4034
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4042
    :cond_1
    return-void
.end method
