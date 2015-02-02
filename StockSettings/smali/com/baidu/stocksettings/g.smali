.class Lcom/baidu/stocksettings/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/stocksettings/c;


# direct methods
.method constructor <init>(Lcom/baidu/stocksettings/c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/stocksettings/g;->a:Lcom/baidu/stocksettings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/baidu/stocksettings/g;->a:Lcom/baidu/stocksettings/c;

    invoke-virtual {v0}, Lcom/baidu/stocksettings/c;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "app_notshow"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
