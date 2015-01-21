.class final Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;
.super Ljava/lang/Object;
.source "GallaryBucketAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Item"
.end annotation


# instance fields
.field public description:Landroid/widget/TextView;

.field public imageView:Landroid/widget/ImageView;

.field public name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;->this$0:Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/GallaryBucketAdapter$Item;-><init>(Lcom/zte/heartyservice/privacy/GallaryBucketAdapter;)V

    return-void
.end method
