.class final Lcom/ctc/System/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/ctc/System/SMSBroadcastReceiver;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/ctc/c/n;


# direct methods
.method constructor <init>(Lcom/ctc/System/SMSBroadcastReceiver;Landroid/content/Context;Lcom/ctc/c/n;)V
    .locals 0

    iput-object p1, p0, Lcom/ctc/System/x;->a:Lcom/ctc/System/SMSBroadcastReceiver;

    iput-object p2, p0, Lcom/ctc/System/x;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ctc/System/x;->c:Lcom/ctc/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/ctc/System/x;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/ctc/System/x;->c:Lcom/ctc/c/n;

    sget-object v2, Lcom/ctc/c/g;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ctc/c/h;->a(Landroid/content/Context;Lcom/ctc/c/n;Ljava/lang/String;)V

    return-void
.end method
