.class Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "VCardViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/VCardViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardViewerAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/vcard/VCardEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final mLayout:I = 0x7f040073


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/mms/ui/VCardViewerActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/VCardViewerActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vcard/VCardEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p3, vCardEntryList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry;>;"
    iput-object p1, p0, Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;->this$0:Lcom/android/mms/ui/VCardViewerActivity;

    .line 238
    const v0, 0x7f040073

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 239
    iput-object p2, p0, Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;->mContext:Landroid/content/Context;

    .line 240
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 241
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v8, 0x0

    .line 249
    if-nez p2, :cond_0

    .line 250
    iget-object v6, p0, Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040073

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 256
    .local v5, view:Landroid/view/View;
    :goto_0
    const v6, 0x7f0f0198

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 257
    .local v0, avatarImage:Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/vcard/VCardEntry;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry;->getPhotoList()Ljava/util/List;

    move-result-object v3

    .line 258
    .local v3, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 259
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/vcard/VCardEntry$PhotoData;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v7

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/vcard/VCardEntry$PhotoData;

    invoke-virtual {v6}, Lcom/android/vcard/VCardEntry$PhotoData;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-static {v7, v8, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 260
    .local v1, b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v2, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 261
    .local v2, mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 265
    .end local v1           #b:Landroid/graphics/Bitmap;
    .end local v2           #mAvatar:Landroid/graphics/drawable/BitmapDrawable;
    :goto_1
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    const v6, 0x7f0f0199

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 270
    .local v4, vCardText:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;->this$0:Lcom/android/mms/ui/VCardViewerActivity;

    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/vcard/VCardEntry;

    #calls: Lcom/android/mms/ui/VCardViewerActivity;->getVCardContentString(Lcom/android/vcard/VCardEntry;)Ljava/lang/String;
    invoke-static {v7, v6}, Lcom/android/mms/ui/VCardViewerActivity;->access$200(Lcom/android/mms/ui/VCardViewerActivity;Lcom/android/vcard/VCardEntry;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    return-object v5

    .line 252
    .end local v0           #avatarImage:Landroid/widget/ImageView;
    .end local v3           #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    .end local v4           #vCardText:Landroid/widget/TextView;
    .end local v5           #view:Landroid/view/View;
    :cond_0
    move-object v5, p2

    .restart local v5       #view:Landroid/view/View;
    goto :goto_0

    .line 263
    .restart local v0       #avatarImage:Landroid/widget/ImageView;
    .restart local v3       #photoList:Ljava/util/List;,"Ljava/util/List<Lcom/android/vcard/VCardEntry$PhotoData;>;"
    :cond_1
    iget-object v6, p0, Lcom/android/mms/ui/VCardViewerActivity$VCardViewerAdapter;->this$0:Lcom/android/mms/ui/VCardViewerActivity;

    #getter for: Lcom/android/mms/ui/VCardViewerActivity;->mDefaultContactImage:Landroid/graphics/drawable/Drawable;
    invoke-static {v6}, Lcom/android/mms/ui/VCardViewerActivity;->access$100(Lcom/android/mms/ui/VCardViewerActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
