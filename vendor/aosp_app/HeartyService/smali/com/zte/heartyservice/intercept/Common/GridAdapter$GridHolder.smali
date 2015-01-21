.class Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;
.super Ljava/lang/Object;
.source "GridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Common/GridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GridHolder"
.end annotation


# instance fields
.field appImage:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Common/GridAdapter;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/intercept/Common/GridAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;->this$0:Lcom/zte/heartyservice/intercept/Common/GridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/intercept/Common/GridAdapter;Lcom/zte/heartyservice/intercept/Common/GridAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Common/GridAdapter$GridHolder;-><init>(Lcom/zte/heartyservice/intercept/Common/GridAdapter;)V

    return-void
.end method
