.class Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;
.super Ljava/lang/Object;
.source "StorageListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field sequence:Landroid/widget/TextView;

.field summary:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;->this$1:Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;Lcom/zte/heartyservice/examination/StorageListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter$AppViewHolder;-><init>(Lcom/zte/heartyservice/examination/StorageListActivity$AppAdapter;)V

    return-void
.end method
