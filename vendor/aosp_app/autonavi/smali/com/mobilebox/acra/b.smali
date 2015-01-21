.class Lcom/mobilebox/acra/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/mobilebox/acra/CrashReportDialog;


# direct methods
.method constructor <init>(Lcom/mobilebox/acra/CrashReportDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/mobilebox/acra/b;->a:Lcom/mobilebox/acra/CrashReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/mobilebox/acra/c;->a()Lcom/mobilebox/acra/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobilebox/acra/c;->e()V

    iget-object v0, p0, Lcom/mobilebox/acra/b;->a:Lcom/mobilebox/acra/CrashReportDialog;

    invoke-virtual {v0}, Lcom/mobilebox/acra/CrashReportDialog;->finish()V

    return-void
.end method
