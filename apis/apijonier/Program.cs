using UsuariosApi.Models;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddDbContext<UsurioContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("UsurioContext") ?? throw new InvalidOperationException("Connection string 'UsurioContext' not found.")));

// Add services to the container.

builder.Services.AddControllers();
builder.Services.AddDbContext<UsuarioContext>(
    opt => opt.UseSqlServer(builder.Configuration.GetConnectionString("DBConnection"))
);
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
