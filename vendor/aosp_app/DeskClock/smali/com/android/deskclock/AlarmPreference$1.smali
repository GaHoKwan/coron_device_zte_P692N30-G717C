.class Lcom/android/deskclock/AlarmPreference$1;
.super Landroid/os/AsyncTask;
.source "AlarmPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/deskclock/AlarmPreference;->setAlert(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/deskclock/AlarmPreference;


# direct methods
.method constructor <init>(Lcom/android/deskclock/AlarmPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmPreference$1;->doInBackground([Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "params"

    .prologue
    const/4 v4, 0x0

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params[0]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, r:Landroid/media/Ringtone;
    aget-object v2, p1, v4

    if-nez v2, :cond_1

    .line 80
    const/4 v1, 0x0

    .line 103
    :cond_0
    :goto_0
    return-object v1

    .line 81
    :cond_1
    const-string v1, ""

    .line 84
    .local v1, title:Ljava/lang/String;
    aget-object v2, p1, v4

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "system/alarm_alert"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    #calls: Lcom/android/deskclock/AlarmPreference;->usingDefaultRingtone()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/deskclock/AlarmPreference;->access$000(Lcom/android/deskclock/AlarmPreference;)Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_1
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v2, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-static {v2, v3}, Lcom/android/deskclock/AlarmPreference;->isRingtoneExisted(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    iget-object v2, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 92
    :cond_3
    if-eqz v0, :cond_4

    .line 93
    iget-object v2, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v2}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 95
    :cond_4
    iget-object v2, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    #calls: Lcom/android/deskclock/AlarmPreference;->usingDefaultRingtone()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/deskclock/AlarmPreference;->access$000(Lcom/android/deskclock/AlarmPreference;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/deskclock/AlarmPreference$1;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AlarmPreference title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    const/4 v1, 0x0

    #setter for: Lcom/android/deskclock/AlarmPreference;->mRingtoneTask:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/deskclock/AlarmPreference;->access$102(Lcom/android/deskclock/AlarmPreference;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 117
    :cond_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/deskclock/AlarmPreference$1;->this$0:Lcom/android/deskclock/AlarmPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
