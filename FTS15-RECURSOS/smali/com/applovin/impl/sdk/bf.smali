.class public Lcom/applovin/impl/sdk/bf;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/be;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/be;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/be;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->O:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->aw:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->ax:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->Q:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->R:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->T:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->S:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->V:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->U:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->W:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->ao:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public l()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->aq:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->ar:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->as:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->au:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->at:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->av:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public r()I
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->ay:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public s()Z
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/be;

    sget-object v1, Lcom/applovin/impl/sdk/bb;->az:Lcom/applovin/impl/sdk/bd;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/be;->a(Lcom/applovin/impl/sdk/bd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
