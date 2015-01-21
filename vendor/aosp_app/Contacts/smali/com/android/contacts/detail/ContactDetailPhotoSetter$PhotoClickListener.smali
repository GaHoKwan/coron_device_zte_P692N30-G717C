.class final Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;
.super Ljava/lang/Object;
.source "ContactDetailPhotoSetter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/detail/ContactDetailPhotoSetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PhotoClickListener"
.end annotation


# instance fields
.field private final mContactData:Lcom/android/contacts/model/Contact;

.field private final mContext:Landroid/content/Context;

.field private final mExpandPhotoOnClick:Z

.field private final mPhotoBitmap:Landroid/graphics/Bitmap;

.field private final mPhotoBytes:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/graphics/Bitmap;[BZ)V
    .locals 0
    .parameter "context"
    .parameter "contactData"
    .parameter "photoBitmap"
    .parameter "photoBytes"
    .parameter "expandPhotoOnClick"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContactData:Lcom/android/contacts/model/Contact;

    .line 58
    iput-object p3, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mPhotoBitmap:Landroid/graphics/Bitmap;

    .line 59
    iput-object p4, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mPhotoBytes:[B

    .line 60
    iput-boolean p5, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mExpandPhotoOnClick:Z

    .line 61
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f00

    .line 66
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v5

    .line 70
    .local v5, delta:Lcom/android/contacts/model/RawContactDeltaList;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v9, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 72
    .local v9, appScale:F
    const/4 v0, 0x2

    new-array v11, v0, [I

    .line 73
    .local v11, pos:[I
    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 76
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 77
    .local v4, rect:Landroid/graphics/Rect;
    aget v0, v11, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 78
    aget v0, v11, v6

    int-to-float v0, v0

    mul-float/2addr v0, v9

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 79
    aget v0, v11, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->right:I

    .line 80
    aget v0, v11, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, v9

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    .line 82
    const/4 v1, 0x0

    .line 83
    .local v1, photoUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mPhotoBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mPhotoBytes:[B

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v6

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v7

    iget-boolean v8, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mExpandPhotoOnClick:Z

    invoke-static/range {v0 .. v8}, Lcom/android/contacts/activities/PhotoSelectionActivity;->buildIntent(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Lcom/android/contacts/model/RawContactDeltaList;ZZZ)Landroid/content/Intent;

    move-result-object v10

    .line 91
    .local v10, photoSelectionIntent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mPhotoBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mPhotoBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mPhotoBytes:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ContactPhotoManager;->cacheBitmap(Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailPhotoSetter$PhotoClickListener;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 96
    return-void
.end method
