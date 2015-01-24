.class Lcom/powermo/SmartBar/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/s;

.field private final synthetic b:Lcom/powermo/SmartBar/k;


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/s;Lcom/powermo/SmartBar/k;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/u;->a:Lcom/powermo/SmartBar/s;

    iput-object p2, p0, Lcom/powermo/SmartBar/u;->b:Lcom/powermo/SmartBar/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/SmartBar/u;->a:Lcom/powermo/SmartBar/s;

    invoke-static {v0}, Lcom/powermo/SmartBar/s;->a(Lcom/powermo/SmartBar/s;)Lcom/powermo/SmartBar/AppListEditorActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/SmartBar/u;->b:Lcom/powermo/SmartBar/k;

    invoke-virtual {v1}, Lcom/powermo/SmartBar/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/powermo/SmartBar/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/powermo/SmartBar/u;->a:Lcom/powermo/SmartBar/s;

    invoke-static {v0}, Lcom/powermo/SmartBar/s;->a(Lcom/powermo/SmartBar/s;)Lcom/powermo/SmartBar/AppListEditorActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->b(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    return-void
.end method
