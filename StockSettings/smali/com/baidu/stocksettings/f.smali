.class Lcom/baidu/stocksettings/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/baidu/stocksettings/c;


# direct methods
.method constructor <init>(Lcom/baidu/stocksettings/c;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/stocksettings/f;->a:Lcom/baidu/stocksettings/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string v0, "reboot"

    invoke-static {v0}, Lcom/baidu/stocksettings/o;->a(Ljava/lang/String;)V

    return-void
.end method
