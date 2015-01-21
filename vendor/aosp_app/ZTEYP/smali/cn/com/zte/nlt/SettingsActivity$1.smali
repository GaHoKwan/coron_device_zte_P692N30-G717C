.class Lcn/com/zte/nlt/SettingsActivity$1;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 94
    iput-object p1, p0, Lcn/com/zte/nlt/SettingsActivity$1;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 98
    iget-object v0, p0, Lcn/com/zte/nlt/SettingsActivity$1;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #setter for: Lcn/com/zte/nlt/SettingsActivity;->isRemindChecked:Z
    invoke-static {v0, p2}, Lcn/com/zte/nlt/SettingsActivity;->access$002(Lcn/com/zte/nlt/SettingsActivity;Z)Z

    .line 99
    return-void
.end method
