.class Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;
.super Landroid/widget/ArrayAdapter;
.source "GroupMembershipView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/editor/GroupMembershipView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupMembershipAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/editor/GroupMembershipView;


# direct methods
.method public constructor <init>(Lcom/android/contacts/editor/GroupMembershipView;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"

    .prologue
    .line 102
    .local p0, this:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;,"Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<TT;>;"
    iput-object p1, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    .line 103
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 104
    return-void
.end method


# virtual methods
.method public getItemIsCheckable(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 108
    .local p0, this:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;,"Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<TT;>;"
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 113
    .local p0, this:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;,"Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItemIsCheckable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 123
    .local p0, this:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;,"Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, itemView:Landroid/view/View;
    move-object v0, v1

    .line 127
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 135
    .local v0, checkedTextView:Landroid/widget/CheckedTextView;
    const-string v2, "GroupMembershipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | mAccountType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    #getter for: Lcom/android/contacts/editor/GroupMembershipView;->mAccountType:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/editor/GroupMembershipView;->access$000(Lcom/android/contacts/editor/GroupMembershipView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v2, p0, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->this$0:Lcom/android/contacts/editor/GroupMembershipView;

    #calls: Lcom/android/contacts/editor/GroupMembershipView;->isCreateGroupEnable()Z
    invoke-static {v2}, Lcom/android/contacts/editor/GroupMembershipView;->access$100(Lcom/android/contacts/editor/GroupMembershipView;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;->getItemIsCheckable(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    const-string v2, "GroupMembershipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getView ssetCheckMarkDrawable(null) position : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 118
    .local p0, this:Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter;,"Lcom/android/contacts/editor/GroupMembershipView$GroupMembershipAdapter<TT;>;"
    const/4 v0, 0x2

    return v0
.end method
