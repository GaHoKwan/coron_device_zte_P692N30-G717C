.class Lcn/com/zte/nlt/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/nlt/SettingsActivity;->showCheckVersionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/com/zte/nlt/SettingsActivity;


# direct methods
.method constructor <init>(Lcn/com/zte/nlt/SettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcn/com/zte/nlt/SettingsActivity$2;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 109
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$2;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #getter for: Lcn/com/zte/nlt/SettingsActivity;->sp:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcn/com/zte/nlt/SettingsActivity;->access$100(Lcn/com/zte/nlt/SettingsActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "isRemindChecked"

    iget-object v2, p0, Lcn/com/zte/nlt/SettingsActivity$2;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #getter for: Lcn/com/zte/nlt/SettingsActivity;->isRemindChecked:Z
    invoke-static {v2}, Lcn/com/zte/nlt/SettingsActivity;->access$000(Lcn/com/zte/nlt/SettingsActivity;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$2;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #calls: Lcn/com/zte/nlt/SettingsActivity;->doUpdate()V
    invoke-static {v0}, Lcn/com/zte/nlt/SettingsActivity;->access$200(Lcn/com/zte/nlt/SettingsActivity;)V

    .line 111
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$2;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #calls: Lcn/com/zte/nlt/SettingsActivity;->checkConnectivityAvailable()Z
    invoke-static {v0}, Lcn/com/zte/nlt/SettingsActivity;->access$300(Lcn/com/zte/nlt/SettingsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$2;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    const v1, 0x7f080063

    const/4 v2, 0x0

    #calls: Lcn/com/zte/nlt/SettingsActivity;->showToast(II)V
    invoke-static {v0, v1, v2}, Lcn/com/zte/nlt/SettingsActivity;->access$400(Lcn/com/zte/nlt/SettingsActivity;II)V

    .line 115
    :cond_0
    return-void
.end method
