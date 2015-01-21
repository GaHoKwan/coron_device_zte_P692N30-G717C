.class Lcom/zte/heartyservice/main/PermissionAlert$2;
.super Ljava/lang/Object;
.source "PermissionAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/main/PermissionAlert;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/PermissionAlert;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/PermissionAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/zte/heartyservice/main/PermissionAlert$2;->this$0:Lcom/zte/heartyservice/main/PermissionAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/zte/heartyservice/main/PermissionAlert$2;->this$0:Lcom/zte/heartyservice/main/PermissionAlert;

    #calls: Lcom/zte/heartyservice/main/PermissionAlert;->doWhenChooseNotAllow()V
    invoke-static {v0}, Lcom/zte/heartyservice/main/PermissionAlert;->access$100(Lcom/zte/heartyservice/main/PermissionAlert;)V

    .line 82
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 83
    return-void
.end method
