.class Lcom/baidu/stocksettings/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/stocksettings/i;


# direct methods
.method constructor <init>(Lcom/baidu/stocksettings/i;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/stocksettings/j;->a:Lcom/baidu/stocksettings/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "busybox killall system_server"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    return-void
.end method
