.class Lcom/mediatek/schpwronoff/RepeatPreference$1;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/schpwronoff/RepeatPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/schpwronoff/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/schpwronoff/RepeatPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/schpwronoff/RepeatPreference$1;->this$0:Lcom/mediatek/schpwronoff/RepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1
    .parameter "dialog"
    .parameter "which"
    .parameter "isChecked"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mediatek/schpwronoff/RepeatPreference$1;->this$0:Lcom/mediatek/schpwronoff/RepeatPreference;

    #getter for: Lcom/mediatek/schpwronoff/RepeatPreference;->mNewDaysOfWeek:Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;
    invoke-static {v0}, Lcom/mediatek/schpwronoff/RepeatPreference;->access$000(Lcom/mediatek/schpwronoff/RepeatPreference;)Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/mediatek/schpwronoff/Alarm$DaysOfWeek;->set(IZ)V

    .line 93
    return-void
.end method
