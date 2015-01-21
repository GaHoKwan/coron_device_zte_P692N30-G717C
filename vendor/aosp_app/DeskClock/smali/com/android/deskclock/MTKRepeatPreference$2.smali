.class Lcom/android/deskclock/MTKRepeatPreference$2;
.super Ljava/lang/Object;
.source "MTKRepeatPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/MTKRepeatPreference;->setupViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/MTKRepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/deskclock/MTKRepeatPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/deskclock/MTKRepeatPreference$2;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference$2;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    #getter for: Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;
    invoke-static {v0}, Lcom/android/deskclock/MTKRepeatPreference;->access$000(Lcom/android/deskclock/MTKRepeatPreference;)Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v0

    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference$2;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    #getter for: Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/deskclock/MTKRepeatPreference;->access$100(Lcom/android/deskclock/MTKRepeatPreference;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->set(IZ)V

    .line 191
    const-string v0, "MTKRepeatPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mNewDaysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference$2;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    #getter for: Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;
    invoke-static {v2}, Lcom/android/deskclock/MTKRepeatPreference;->access$000(Lcom/android/deskclock/MTKRepeatPreference;)Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mDaysOfWeek = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/deskclock/MTKRepeatPreference$2;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    #getter for: Lcom/android/deskclock/MTKRepeatPreference;->mDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;
    invoke-static {v2}, Lcom/android/deskclock/MTKRepeatPreference;->access$200(Lcom/android/deskclock/MTKRepeatPreference;)Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/deskclock/MTKRepeatPreference$2;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference$2;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    #getter for: Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;
    invoke-static {v1}, Lcom/android/deskclock/MTKRepeatPreference;->access$000(Lcom/android/deskclock/MTKRepeatPreference;)Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v1

    #calls: Lcom/android/deskclock/MTKRepeatPreference;->setRadioRepeatState(I)V
    invoke-static {v0, v1}, Lcom/android/deskclock/MTKRepeatPreference;->access$300(Lcom/android/deskclock/MTKRepeatPreference;I)V

    .line 196
    return-void
.end method
