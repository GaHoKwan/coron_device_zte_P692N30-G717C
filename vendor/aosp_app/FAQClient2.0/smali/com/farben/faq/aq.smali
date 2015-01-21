.class final Lcom/farben/faq/aq;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/farben/faq/MyPhoneAct;


# direct methods
.method private constructor <init>(Lcom/farben/faq/MyPhoneAct;)V
    .locals 0

    iput-object p1, p0, Lcom/farben/faq/aq;->a:Lcom/farben/faq/MyPhoneAct;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/farben/faq/MyPhoneAct;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/farben/faq/aq;-><init>(Lcom/farben/faq/MyPhoneAct;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/farben/faq/aq;->a:Lcom/farben/faq/MyPhoneAct;

    invoke-static {v0}, Lcom/farben/faq/MyPhoneAct;->a(Lcom/farben/faq/MyPhoneAct;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, [Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/farben/faq/aq;->a:Lcom/farben/faq/MyPhoneAct;

    invoke-static {v0, p1}, Lcom/farben/faq/MyPhoneAct;->a(Lcom/farben/faq/MyPhoneAct;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/farben/faq/aq;->a:Lcom/farben/faq/MyPhoneAct;

    invoke-static {v0}, Lcom/farben/faq/MyPhoneAct;->b(Lcom/farben/faq/MyPhoneAct;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/farben/faq/aq;->a:Lcom/farben/faq/MyPhoneAct;

    invoke-static {v0}, Lcom/farben/faq/MyPhoneAct;->c(Lcom/farben/faq/MyPhoneAct;)V

    return-void
.end method
