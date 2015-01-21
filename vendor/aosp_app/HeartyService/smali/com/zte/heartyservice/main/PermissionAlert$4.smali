.class Lcom/zte/heartyservice/main/PermissionAlert$4;
.super Ljava/lang/Object;
.source "PermissionAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 110
    iput-object p1, p0, Lcom/zte/heartyservice/main/PermissionAlert$4;->this$0:Lcom/zte/heartyservice/main/PermissionAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/zte/heartyservice/main/PermissionAlert$4;->this$0:Lcom/zte/heartyservice/main/PermissionAlert;

    invoke-virtual {v0}, Lcom/zte/heartyservice/main/PermissionAlert;->finish()V

    .line 115
    return-void
.end method
