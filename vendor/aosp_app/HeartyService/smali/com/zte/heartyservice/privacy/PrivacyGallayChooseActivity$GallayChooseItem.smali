.class public Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;
.super Lcom/zte/heartyservice/common/datatype/CommonListItem;
.source "PrivacyGallayChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GallayChooseItem"
.end annotation


# instance fields
.field public bitMap:Landroid/graphics/Bitmap;

.field public checked:Z

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

.field public type:I


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 321
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity$GallayChooseItem;->this$0:Lcom/zte/heartyservice/privacy/PrivacyGallayChooseActivity;

    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/CommonListItem;-><init>()V

    return-void
.end method
