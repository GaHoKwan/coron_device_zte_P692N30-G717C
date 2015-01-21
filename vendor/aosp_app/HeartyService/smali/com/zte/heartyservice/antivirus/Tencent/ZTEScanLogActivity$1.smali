.class Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity$1;
.super Ljava/lang/Object;
.source "ZTEScanLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity$1;->this$0:Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;

    #calls: Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->doCleanLog()V
    invoke-static {v0}, Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;->access$000(Lcom/zte/heartyservice/antivirus/Tencent/ZTEScanLogActivity;)V

    .line 53
    return-void
.end method
