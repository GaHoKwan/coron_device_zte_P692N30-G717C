.class Lcn/com/zte/nlt/SettingsActivity$4;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/com/zte/nlt/SettingsActivity;->initWarningTextView()V
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
    .line 130
    iput-object p1, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const-wide/16 v8, 0x0

    .line 133
    iget-object v4, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-static {v4}, Lcn/com/zte/nlt/SettingsActivity;->access$508(Lcn/com/zte/nlt/SettingsActivity;)I

    .line 135
    iget-object v4, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #getter for: Lcn/com/zte/nlt/SettingsActivity;->clickTime:J
    invoke-static {v4}, Lcn/com/zte/nlt/SettingsActivity;->access$600(Lcn/com/zte/nlt/SettingsActivity;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #getter for: Lcn/com/zte/nlt/SettingsActivity;->clickTime:J
    invoke-static {v6}, Lcn/com/zte/nlt/SettingsActivity;->access$600(Lcn/com/zte/nlt/SettingsActivity;)J

    move-result-wide v6

    sub-long v2, v4, v6

    .line 137
    .local v2, subTime:J
    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    .line 138
    iget-object v4, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #setter for: Lcn/com/zte/nlt/SettingsActivity;->clickTime:J
    invoke-static {v4, v8, v9}, Lcn/com/zte/nlt/SettingsActivity;->access$602(Lcn/com/zte/nlt/SettingsActivity;J)J

    .line 157
    .end local v2           #subTime:J
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v2       #subTime:J
    :cond_1
    iget-object v4, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #setter for: Lcn/com/zte/nlt/SettingsActivity;->clickTime:J
    invoke-static {v4, v5, v6}, Lcn/com/zte/nlt/SettingsActivity;->access$602(Lcn/com/zte/nlt/SettingsActivity;J)J

    .line 148
    iget-object v4, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    #getter for: Lcn/com/zte/nlt/SettingsActivity;->clickCount:I
    invoke-static {v4}, Lcn/com/zte/nlt/SettingsActivity;->access$500(Lcn/com/zte/nlt/SettingsActivity;)I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_0

    .line 151
    iget-object v4, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    const/4 v5, 0x0

    #setter for: Lcn/com/zte/nlt/SettingsActivity;->clickCount:I
    invoke-static {v4, v5}, Lcn/com/zte/nlt/SettingsActivity;->access$502(Lcn/com/zte/nlt/SettingsActivity;I)I

    .line 152
    iget-object v4, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-virtual {v4}, Lcn/com/zte/nlt/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->getInstance(Landroid/content/Context;)Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/zte/nlt/module/zte/ZteNltDbaFactory;->getDbaInstance()Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;

    move-result-object v1

    .line 153
    .local v1, dbaInstance:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;
    if-eqz v1, :cond_0

    .line 154
    invoke-virtual {v1}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->getDbVersion()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, dbVersion:Ljava/lang/String;
    iget-object v4, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-virtual {v4}, Lcn/com/zte/nlt/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dbVersion:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 144
    .end local v0           #dbVersion:Ljava/lang/String;
    .end local v1           #dbaInstance:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;
    .end local v2           #subTime:J
    :cond_2
    iget-object v4, p0, Lcn/com/zte/nlt/SettingsActivity$4;->this$0:Lcn/com/zte/nlt/SettingsActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    #setter for: Lcn/com/zte/nlt/SettingsActivity;->clickTime:J
    invoke-static {v4, v5, v6}, Lcn/com/zte/nlt/SettingsActivity;->access$602(Lcn/com/zte/nlt/SettingsActivity;J)J

    goto :goto_0
.end method
