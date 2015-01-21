.class Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$7;
.super Ljava/lang/Object;
.source "ZTEBlackWhiteListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->optionsItemSelectedHandler(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$7;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity$7;->this$0:Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;

    #calls: Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->btnOnClickHandler(I)V
    invoke-static {v0, p2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;->access$000(Lcom/zte/heartyservice/intercept/Tencent/ZTEBlackWhiteListActivity;I)V

    .line 449
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 451
    return-void
.end method
