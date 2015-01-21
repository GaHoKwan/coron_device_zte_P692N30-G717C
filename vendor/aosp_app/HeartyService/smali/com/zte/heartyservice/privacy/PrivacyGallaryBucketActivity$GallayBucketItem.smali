.class public Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;
.super Ljava/lang/Object;
.source "PrivacyGallaryBucketActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GallayBucketItem"
.end annotation


# instance fields
.field public bitMap:Landroid/graphics/Bitmap;

.field public bitMapPath:Ljava/lang/String;

.field public bitMapType:I

.field public bucketId:I

.field public bucketName:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public numOfImage:I

.field public numOfVideo:I

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity$GallayBucketItem;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallaryBucketActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
