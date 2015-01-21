.class Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$2;
.super Ljava/lang/Object;
.source "ZTESMSInterceptActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3$2;->this$1:Lcom/zte/heartyservice/intercept/Tencent/ZTESMSInterceptActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 246
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 247
    return-void
.end method
