.class Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/FileManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilePathAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/FileManagerActivity;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p4, objects:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    .line 175
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 176
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 182
    if-nez p2, :cond_0

    .line 183
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    iget-object v9, v9, Lcom/zte/heartyservice/privacy/FileManagerActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030049

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p3, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 189
    .local v8, view:Landroid/view/View;
    :goto_0
    const v9, 0x7f0e00f0

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 191
    .local v2, leftImage:Landroid/widget/ImageView;
    const v9, 0x7f0e00ee

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 193
    .local v4, leftImageNull:Landroid/widget/ImageView;
    const v9, 0x7f0e00ef

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 195
    .local v3, leftImageArrow:Landroid/widget/ImageView;
    const v9, 0x7f0e00f1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 196
    .local v5, leftText:Landroid/widget/TextView;
    const v9, 0x7f0e00ed

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 198
    .local v7, pathItem:Landroid/view/View;
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FileManagerActivity;->mActionBarAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v9}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->access$000(Lcom/zte/heartyservice/privacy/FileManagerActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 199
    .local v6, path:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustInternalSDPath()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, internalSDPath:Ljava/lang/String;
    invoke-static {}, Lcom/zte/heartyservice/common/utils/SDUtils;->getJustExternalSDPath()Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, externalSDPath:Ljava/lang/String;
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 202
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    const v10, 0x7f0a02f8

    invoke-virtual {v9, v10}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 203
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    const v9, 0x7f0200f3

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 206
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    return-object v8

    .line 186
    .end local v0           #externalSDPath:Ljava/lang/String;
    .end local v1           #internalSDPath:Ljava/lang/String;
    .end local v2           #leftImage:Landroid/widget/ImageView;
    .end local v3           #leftImageArrow:Landroid/widget/ImageView;
    .end local v4           #leftImageNull:Landroid/widget/ImageView;
    .end local v5           #leftText:Landroid/widget/TextView;
    .end local v6           #path:Ljava/lang/String;
    .end local v7           #pathItem:Landroid/view/View;
    .end local v8           #view:Landroid/view/View;
    :cond_0
    move-object v8, p2

    .restart local v8       #view:Landroid/view/View;
    goto :goto_0

    .line 207
    .restart local v0       #externalSDPath:Ljava/lang/String;
    .restart local v1       #internalSDPath:Ljava/lang/String;
    .restart local v2       #leftImage:Landroid/widget/ImageView;
    .restart local v3       #leftImageArrow:Landroid/widget/ImageView;
    .restart local v4       #leftImageNull:Landroid/widget/ImageView;
    .restart local v5       #leftText:Landroid/widget/TextView;
    .restart local v6       #path:Ljava/lang/String;
    .restart local v7       #pathItem:Landroid/view/View;
    :cond_1
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 208
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    const v10, 0x7f0a02f9

    invoke-virtual {v9, v10}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 209
    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    const/16 v9, 0x8

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    const v9, 0x7f02012f

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 214
    :cond_2
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    #getter for: Lcom/zte/heartyservice/privacy/FileManagerActivity;->mCurDir:Ljava/io/File;
    invoke-static {v9}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->access$400(Lcom/zte/heartyservice/privacy/FileManagerActivity;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 215
    iget-object v9, p0, Lcom/zte/heartyservice/privacy/FileManagerActivity$FilePathAdapter;->this$0:Lcom/zte/heartyservice/privacy/FileManagerActivity;

    invoke-virtual {v9}, Lcom/zte/heartyservice/privacy/FileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080015

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 220
    :goto_2
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 221
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    const v9, 0x7f020148

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 218
    :cond_3
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method
