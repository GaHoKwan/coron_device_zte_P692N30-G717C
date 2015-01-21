.class Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditShortCutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/EditShortCutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragAndDropListViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/zte/heartyservice/main/ShortCutItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/main/EditShortCutActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    .line 193
    const v0, 0x7f03003b

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->mShortCutArrayList:Ljava/util/List;
    invoke-static {p1}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$700(Lcom/zte/heartyservice/main/EditShortCutActivity;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 194
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "cacheView"
    .parameter "parent"

    .prologue
    .line 199
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/main/ShortCutItem;

    .line 201
    .local v3, item:Lcom/zte/heartyservice/main/ShortCutItem;
    iget-object v4, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->inflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$800(Lcom/zte/heartyservice/main/EditShortCutActivity;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03003b

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 202
    const v4, 0x7f0e00b8

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 203
    .local v1, appImage:Landroid/widget/ImageView;
    iget v4, v3, Lcom/zte/heartyservice/main/ShortCutItem;->icon:I

    if-nez v4, :cond_0

    .line 205
    const v4, 0x7f02016f

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    :goto_0
    const v4, 0x7f0e00b9

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    .local v0, appComment:Landroid/widget/TextView;
    iget-object v4, v3, Lcom/zte/heartyservice/main/ShortCutItem;->name:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 214
    iget-object v4, v3, Lcom/zte/heartyservice/main/ShortCutItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :goto_1
    const v4, 0x7f0e00ba

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 226
    .local v2, deleteBtn:Landroid/widget/ImageButton;
    new-instance v4, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;

    invoke-direct {v4, p0, p1}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter$1;-><init>(Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;I)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    return-object p2

    .line 210
    .end local v0           #appComment:Landroid/widget/TextView;
    .end local v2           #deleteBtn:Landroid/widget/ImageButton;
    :cond_0
    iget v4, v3, Lcom/zte/heartyservice/main/ShortCutItem;->icon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 216
    .restart local v0       #appComment:Landroid/widget/TextView;
    :cond_1
    iget v4, v3, Lcom/zte/heartyservice/main/ShortCutItem;->label:I

    if-nez v4, :cond_2

    .line 218
    const v4, 0x7f0a0610

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 221
    :cond_2
    iget v4, v3, Lcom/zte/heartyservice/main/ShortCutItem;->label:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
