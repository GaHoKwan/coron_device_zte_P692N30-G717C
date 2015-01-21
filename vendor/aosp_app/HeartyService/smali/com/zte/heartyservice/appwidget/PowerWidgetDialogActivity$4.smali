.class Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$4;
.super Ljava/lang/Object;
.source "PowerWidgetDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$4;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$4;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->finish()V

    .line 103
    return-void
.end method
