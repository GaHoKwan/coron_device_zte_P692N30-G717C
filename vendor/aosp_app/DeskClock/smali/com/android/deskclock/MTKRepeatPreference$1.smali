.class Lcom/android/deskclock/MTKRepeatPreference$1;
.super Landroid/widget/ArrayAdapter;
.source "MTKRepeatPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/MTKRepeatPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/MTKRepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/deskclock/MTKRepeatPreference;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/deskclock/MTKRepeatPreference$1;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v3, 0x1

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference$1;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    #getter for: Lcom/android/deskclock/MTKRepeatPreference;->mNewDaysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;
    invoke-static {v1}, Lcom/android/deskclock/MTKRepeatPreference;->access$000(Lcom/android/deskclock/MTKRepeatPreference;)Lcom/android/deskclock/Alarm$DaysOfWeek;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/deskclock/Alarm$DaysOfWeek;->getCoded()I

    move-result v1

    shl-int v2, v3, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference$1;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    #getter for: Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/deskclock/MTKRepeatPreference;->access$100(Lcom/android/deskclock/MTKRepeatPreference;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p1, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 85
    :goto_0
    return-object v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/deskclock/MTKRepeatPreference$1;->this$0:Lcom/android/deskclock/MTKRepeatPreference;

    #getter for: Lcom/android/deskclock/MTKRepeatPreference;->mListView:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/android/deskclock/MTKRepeatPreference;->access$100(Lcom/android/deskclock/MTKRepeatPreference;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    goto :goto_0
.end method
