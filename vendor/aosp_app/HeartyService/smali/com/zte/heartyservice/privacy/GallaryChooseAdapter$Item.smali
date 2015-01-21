.class public final Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;
.super Ljava/lang/Object;
.source "GallaryChooseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Item"
.end annotation


# instance fields
.field public imageChecked:Landroid/widget/ImageView;

.field public imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;

.field public videoPlayImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/GallaryChooseAdapter$Item;->this$0:Lcom/zte/heartyservice/privacy/GallaryChooseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
