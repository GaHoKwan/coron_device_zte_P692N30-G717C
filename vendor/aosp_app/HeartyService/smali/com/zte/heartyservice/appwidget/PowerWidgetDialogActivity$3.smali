.class Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$3;
.super Ljava/lang/Object;
.source "PowerWidgetDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 85
    iput-object p1, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$3;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 88
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.zte.heartyservice.intent.action.startActivity.SAVE_ELECTRICITY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$3;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity$3;->this$0:Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;

    invoke-virtual {v2}, Lcom/zte/heartyservice/appwidget/PowerWidgetDialogActivity;->finish()V

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
