.class Lcom/powermo/SmartBar/t;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/powermo/SmartBar/s;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/powermo/SmartBar/s;I)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/SmartBar/t;->a:Lcom/powermo/SmartBar/s;

    iput p2, p0, Lcom/powermo/SmartBar/t;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/powermo/SmartBar/t;->a:Lcom/powermo/SmartBar/s;

    invoke-static {v0}, Lcom/powermo/SmartBar/s;->a(Lcom/powermo/SmartBar/s;)Lcom/powermo/SmartBar/AppListEditorActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->a(Lcom/powermo/SmartBar/AppListEditorActivity;)Lcom/powermo/SmartBar/c;

    move-result-object v0

    iget v1, p0, Lcom/powermo/SmartBar/t;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/powermo/SmartBar/c;->b(II)V

    iget-object v0, p0, Lcom/powermo/SmartBar/t;->a:Lcom/powermo/SmartBar/s;

    invoke-static {v0}, Lcom/powermo/SmartBar/s;->a(Lcom/powermo/SmartBar/s;)Lcom/powermo/SmartBar/AppListEditorActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/powermo/SmartBar/AppListEditorActivity;->b(Lcom/powermo/SmartBar/AppListEditorActivity;)V

    return-void
.end method
